package com.psl.space.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.psl.space.entity.Actor;
import com.psl.space.entity.Answer;
import com.psl.space.entity.Question;
import com.psl.space.entity.QuestionAnswer;
import com.psl.space.entity.TagType;
import com.psl.space.service.ActorService;
import com.psl.space.service.ActorServiceInt;
import com.psl.space.service.AnswerService;
import com.psl.space.service.AnswerServiceInt;
import com.psl.space.service.QuestionService;
import com.psl.space.service.QuestionServiceInt;

@Controller
public class QuestionController {
	
	
	@Autowired
	@Qualifier("actorService")
	ActorServiceInt actorService;
	@Autowired
	@Qualifier("answerService")
	AnswerServiceInt answerService;
	@Autowired
	@Qualifier("questionService")
	QuestionServiceInt questionService;
	

	@RequestMapping(value="u/question/add",method=RequestMethod.POST)
	public  @ResponseBody String  addQuestion(@RequestParam("question") String question,
			@RequestParam("tag") String tag
			,HttpServletRequest req){
		
		HttpSession session=req.getSession(false);
		if(session==null){
			return "autherror";
		}
		
		
		int  actorId=Integer.parseInt(session.getAttribute("actorId").toString());
		Actor actor=actorService.getActor(actorId);
		Question newQuestion = new Question();
		newQuestion.setActor(actor);
		newQuestion.setAskDate(new Date());
		newQuestion.setQuestion(question);
		newQuestion.setTag(TagType.valueOf(tag.toUpperCase()));
		questionService.addQuestion(newQuestion);
		String msg="Your Question has been posted to our Experts";
		return msg;
	}
	
	@RequestMapping(value="u/question/add",method=RequestMethod.GET)
	public  String  addQuestionPage(HttpServletRequest req){
		System.out.println("adding question ");
		HttpSession session=req.getSession(false);
		if(session==null){
			return "autherror";
		}
		if(session.getAttribute("actorId")==null){
			return "autherror";
		}
		
		
		int  actorId=Integer.parseInt(session.getAttribute("actorId").toString());
		Actor actor=actorService.getActor(actorId);
		System.out.println("elkfhdlhfldwhfi"+req.getContextPath());
		return "askquestion";
	}
	
	
	@RequestMapping("e/question/everything")
	public @ResponseBody String getQuestions(HttpServletRequest req){
	
		
		List<QuestionAnswer> result=new ArrayList<QuestionAnswer>();
		Gson gson=new Gson();
		List<Question> questions=questionService.getQuestionsByNumber(-1);
		
		for(Question question:questions){
			//question.getActor().setAuthentication(null);
			question.setActor(null);
		}
		
		System.out.println(gson.toJson(questions));
		
	for(Question question:questions){
			
			QuestionAnswer questionAnswer=new QuestionAnswer();
			
			questionAnswer.setQuestion(question);
			List<Answer> answers=questionService.getAnswers(question.getQuestionId());
			for(Answer answer:answers){
				answer.setActor(null);
				answer.setQuestion(null);
			}
			questionAnswer.setAnswers(answers);
			result.add(questionAnswer);
		}
		
		String questionsJSON=gson.toJson(result);
		
		return questionsJSON;
	}
	
	@RequestMapping("question/get/{number}")
	public @ResponseBody String getSomeQuestions(@PathVariable("number")int number){
		
		Gson gson=new Gson();
		List<Question> questions=questionService.getQuestionsByNumber(number);
		//to remove cycle
		for(Question question:questions){
			question.setActor(null);
		}
		
		if(questions.size()==0){
			String msg="{\"question\":\"connection problem\"}";
			List<String> msgList=new ArrayList<String>();
			msgList.add(msg);
			return gson.toJson(msgList);
		}
		String questionsJSON=gson.toJson(questions);
		System.out.println(questionsJSON);
		return questionsJSON;
	}
	
	@RequestMapping(value="u/question/all",method=RequestMethod.POST)
	public @ResponseBody String getAllQuestions(HttpServletRequest req){
	
		HttpSession session=req.getSession(false);
		if(session==null){
			return "autherror";
		}
		
		
		int  actorId=Integer.parseInt(session.getAttribute("actorId").toString());
		int number=-1;
		Gson gson=new Gson();
		List<Question> questions=questionService.getQuestionsByNumber(number);
		for(Question question:questions){
			question.setActor(null);
		}
		
		String questionsJSON=gson.toJson(questions);
		
		return questionsJSON;
	}
	
	
	@RequestMapping(value="question/all",method=RequestMethod.GET)
	public  String getAllQuestionsPage(HttpServletRequest req){
		
	return "displayallquestions";
	}
	
	@RequestMapping("u/question/getAnswer/{questionId}")
	public  @ResponseBody String getAnswersForQuestion(@PathVariable("questionId") int questionId
			,HttpServletRequest req){
	
		HttpSession session=req.getSession(false);
		if(session==null){
			return "autherror";
		}
		if(session.getAttribute("actorId")==null){
			return "autherror";
		}
		
		int  actorId=Integer.parseInt(session.getAttribute("actorId").toString());
		Gson gson=new Gson();
		QuestionAnswer questionAnswer=new QuestionAnswer();
		Question question=questionService.getQuestion(questionId);
		question.setActor(null);
		questionAnswer.setQuestion(question);
		List<Answer> answers=questionService.getAnswers(questionId);
		if(answers.isEmpty()){
			questionAnswer.setHasAnswers(false);
		}
		for(Answer answer:answers){
			answer.getActor().setAuthentication(null);;
			answer.setQuestion(null);
			
		}
		questionAnswer.setAnswers(answers);
		
		String result=gson.toJson(questionAnswer);
		return result;
	}
	
	
	@RequestMapping(value="u/question/getanswerpage/{questionId}")
	public   String getAnswersForQuestionPage(@PathVariable("questionId") int questionId
			,HttpServletRequest req,
			HttpServletResponse res){
	
		HttpSession session=req.getSession(false);
		if(session==null){
			return "autherror";
		}
		if(session.getAttribute("actorId")==null){
			return "autherror";
		}
		
		return "answersofquestion";
	}
	
	
	@RequestMapping("u/question/getmyquestions")
	public @ResponseBody String getMyQuestions(HttpServletRequest req){
	
	
	HttpSession session=req.getSession(false);
	if(session==null){
		return "autherror";
	}
	Gson gson=new Gson();
	int  actorId=Integer.parseInt(session.getAttribute("actorId").toString());
	List<QuestionAnswer> questionAnswers=new ArrayList<QuestionAnswer>();
		List<Question> myQuestions=questionService.getMyQuestions(actorId);
		//avoid loop set actor a s null
		for(Question question:myQuestions){
			question.setActor(null);
		}
		
		for(Question question:myQuestions){
			QuestionAnswer questionAnswer=new QuestionAnswer();
			questionAnswer.setQuestion(question);
			List<Answer> answers=questionService.getAnswers(question.getQuestionId());
			for(Answer answer:answers){
				answer.setActor(null);
				answer.setQuestion(null);
			}
			if(answers.isEmpty()){
				questionAnswer.setHasAnswers(false);
				System.out.println("set has answer as false");
			}
			questionAnswer.setAnswers(answers);
			questionAnswers.add(questionAnswer);
		}
		if(questionAnswers.isEmpty()){
			return "{\"message\":\"No Questions yet\"}";
		}
		String questionsJSON=gson.toJson(questionAnswers);
		return questionsJSON;
	}
	
	@RequestMapping(value="question/all")
	public @ResponseBody String getAllQuestionsForUser(HttpServletRequest req){
	
		int number=-1;
		Gson gson=new Gson();
		List<Question> questions=questionService.getQuestionsByNumber(number);
		for(Question question:questions){
			if(question.getActor()!=null)
			question.getActor().setAuthentication(null);
		}
		String questionsJSON=gson.toJson(questions);
		
		return questionsJSON;
	}
}
