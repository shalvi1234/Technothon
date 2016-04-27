package com.psl.space.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.psl.space.entity.Actor;
import com.psl.space.entity.Authentication;
import com.psl.space.service.AuthenticationServiceInt;
import com.psl.space.util.MD5Hasher;

@Controller
public class LoginController {

	@Autowired
	@Qualifier("authenticationService")
	AuthenticationServiceInt authenticationService;
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public  String  login(@RequestParam("username") String username,
			@RequestParam("password") String password,
			HttpServletRequest request
			,Model model){
		
		System.out.println("INSIDE LOGIN CONTROLLER");
		
		MD5Hasher md5Hasher=new MD5Hasher();
			Authentication authentication=authenticationService.checkAuth(username, md5Hasher.encrypt(password));
			if(authentication==null){
				model.addAttribute("message", "Wrong username or password!");
				return "login";
			}
			if(authentication.isLocked()){
				model.addAttribute("message", "Account is locked contact administrator");
				return "login";
			}
			authentication.setLastLogin(new Date());
			authentication=authenticationService.updateAuthentication(authentication);
			Actor actor=authentication.getActor();
			if(actor==null){
				System.out.println("wrong username or password");
				model.addAttribute("message", "Wrong username or password!");
				return "login";
			}
			HttpSession session=request.getSession();
			if(actor==null){
				return "login";
			}
			else{
				session.setAttribute("actorId", actor.getActorId());
				session.setAttribute("role", actor.getRole());
				model.addAttribute("actor",actor);
				model.addAttribute("message", "");
				if(actor.getRole().equals("EXPERT")){
					
					return "expertwelcome";
				}
				else{
					//model.addAttribute("message","You have not asked any questions yet!");
					return "userwelcome";
				}
			
			}
		
	
	}
	
	@RequestMapping("logout")
	public  String  logout(HttpServletRequest request){
		System.out.println("Inside logout");
		request.getSession(false).invalidate();
		return "login";
	}
}
