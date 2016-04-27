package com.psl.space.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.psl.space.entity.Actor;
import com.psl.space.entity.Answer;
import com.psl.space.entity.Question;
import com.psl.space.service.ActorService;
import com.psl.space.service.ActorServiceInt;
import com.psl.space.service.AnswerService;
import com.psl.space.service.AnswerServiceInt;
import com.psl.space.service.QuestionService;
import com.psl.space.service.QuestionServiceInt;

@Controller
public class AnswerController {

	@Autowired
	@Qualifier("actorService")
	ActorServiceInt actorService;
	@Autowired
	@Qualifier("answerService")
	AnswerServiceInt answerService;
	@Autowired
	@Qualifier("questionService")
	QuestionServiceInt questionService;
	
	@RequestMapping("e/answer/add")
	public @ResponseBody String addAnswer(@RequestParam("questionId") int questionId,
			@RequestParam("answer") String answer
			,HttpServletRequest req){
		
	////To remove
		HttpSession session=req.getSession(false);
		if(session==null){
			return "autherror";
		}
		if(session.getAttribute("actorId")==null){
			return "autherror";
		}
		System.out.println("Inside add answer controller");
			int  actorId=Integer.parseInt(session.getAttribute("actorId").toString());
			Actor actor=actorService.getActor(actorId);
			Question question=questionService.getQuestion(questionId);
			Answer newAnswer=new Answer();
			newAnswer.setActor(actor);
			newAnswer.setAnswer(answer);
			newAnswer.setAnswerDate(new Date());
			newAnswer.setQuestion(question);
			answerService.addAnswer(newAnswer);
			
			return "Your answer has been added";
		
	}
	
	@RequestMapping("u/answer/get")
	public @ResponseBody String getAnswers(@RequestParam("questionId") int questionId
			,HttpServletRequest req){
		
		HttpSession session=req.getSession(false);
		if(session==null){
			return "autherror";
		}
			Gson gson=new Gson();
			int  actorId=Integer.parseInt(session.getAttribute("actorId").toString());
			Actor actor=actorService.getActor(actorId);
			String answersJSON=gson.toJson(questionService.getAnswers(questionId));
			return answersJSON;
		
	}
}
