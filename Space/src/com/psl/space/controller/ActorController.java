package com.psl.space.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.psl.space.entity.Actor;
import com.psl.space.entity.Answer;
import com.psl.space.entity.Authentication;
import com.psl.space.entity.Question;
import com.psl.space.service.ActorService;
import com.psl.space.service.ActorServiceInt;
import com.psl.space.service.AnswerService;
import com.psl.space.service.AnswerServiceInt;
import com.psl.space.service.AuthenticationService;
import com.psl.space.service.AuthenticationServiceInt;
import com.psl.space.service.QueryService;
import com.psl.space.service.QueryServiceInt;
import com.psl.space.service.QuestionService;
import com.psl.space.service.QuestionServiceInt;
import com.psl.space.util.MD5Hasher;


@Controller
public class ActorController {
	
	@Autowired
	@Qualifier("actorService")
	ActorServiceInt actorService;
	@Autowired
	@Qualifier("answerService")
	AnswerServiceInt answerService;
	@Autowired
	@Qualifier("questionService")
	QuestionServiceInt questionService;
	@Autowired
	@Qualifier("queryService")
	QueryServiceInt queryService;
	@Autowired
	@Qualifier("authenticationService")
	AuthenticationServiceInt authenticationService;
	
	
	@RequestMapping("addactor")
	public  String  addActor(@RequestParam("dob") String dob
			,@RequestParam("email") String email
			,@RequestParam("firstName") String firstName
			,@RequestParam("lastName") String lastName
			,@RequestParam("phoneNumber")String phoneNumber
			,@RequestParam("username")String username
			,@RequestParam("password")String password
			,@RequestParam("role")String role
			,Model model
			,HttpServletRequest req) {
		HttpSession session=req.getSession();
		MD5Hasher md5Hasher=new MD5Hasher();
		
		Actor actor = new Actor();
		Authentication authentication=new Authentication();
		SimpleDateFormat sdf=new SimpleDateFormat("MM-dd-yyyy");
		Date dobDate=null;
		try {
			dobDate = sdf.parse(dob);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		actor.setDob(dobDate);
		actor.setEmail(email);
		actor.setFirstName(firstName);
		actor.setLastName(lastName);
		actor.setPhoneNumber(phoneNumber);
		actor.setRole(role);
		authentication.setLocked(false);
		authentication.setUserName(username.toLowerCase());
		authentication.setPassword(md5Hasher.encrypt(password));
		authentication.setActor(actor);
		actor.setAuthentication(authentication);
		Actor savedActor=actorService.addActor(actor);
		authenticationService.addAuthentication(authentication);
		
		session.setAttribute("actorId", savedActor.getActorId());
		session.setAttribute("role", role);
		model.addAttribute("actor", actor);
		if(role.equals("EXPERT")){
			return "expertwelcome";
		}
		else{
			return "userwelcome";
		}
		
	}

	
	@RequestMapping("rest")
	public @ResponseBody String rest(){
		System.setProperty("proxyHost", "goaproxy.persistent.co.in");
		System.setProperty("HTTPSproxyHost", "goaproxy.persistent.co.in");
		System.setProperty("proxyPort", "8080");
		RestTemplate r=new RestTemplate();
		String url="https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY";
		String response=r.getForObject(url, String.class);
		System.out.println(response);
		return response;
	}
	
	@RequestMapping(value="actor/checkusername",method=RequestMethod.POST)
	public @ResponseBody String checkusername(@RequestParam("username") String username){
		String available=Boolean.toString(actorService.checkUsername(username.toLowerCase()));
		
		
		return available;
	}
	
	@RequestMapping("getRole")
	public @ResponseBody String getRole(HttpServletRequest req){
		HttpSession session = req.getSession(false); 
		if(session==null){
			return "{\"msg\":\"not logged in\"}";
		}
		int actorId=Integer.parseInt(session.getAttribute("actorId").toString());
		return actorService.getActor(actorId).getRole();
	}
	
	@RequestMapping("getActor")
	public @ResponseBody String getActor(HttpServletRequest req){
		Gson gson=new Gson();
		HttpSession session = req.getSession(false); 
		if(session==null){
			return "{\"msg\":\"not logged in\"}";
		}
		if(session.getAttribute("actorId")==null){
			return "{\"msg\":\"not logged in\"}";
		}
		int actorId=Integer.parseInt(session.getAttribute("actorId").toString());
		Actor actor=actorService.getActor(actorId);
		if(actor==null){
			return "{\"msg\":\"not logged in\"}";
		}
		actor.setAuthentication(null);
		String actorJSON=gson.toJson(actor);
		return actorJSON;
				
	}
}
