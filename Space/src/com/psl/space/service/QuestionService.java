package com.psl.space.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.psl.space.dao.QuestionDao;
import com.psl.space.dao.QuestionDaoInt;
import com.psl.space.entity.Answer;
import com.psl.space.entity.Question;

@Service
public class QuestionService implements QuestionServiceInt {

	@Autowired
	@Qualifier("questionDao")
	private QuestionDaoInt questionDao;
	
	public Question  addQuestion(Question question){
		 return questionDao.addQuestion(question);
	}
	
	public Question deleteQuestion(Question question){
		return questionDao.deleteQuestion(question);
	}
	
	public Question updateQuestion(Question question){
		
		return questionDao.updateQuestion(question);
	}
	
	public Question getQuestion(int questionId){
		return questionDao.getQuestion(questionId);
	}
	
	public List<Question> getQuestionsByNumber(int number){
		return questionDao.getQuestionsByNumber(number);
	}
	
	public List<Answer> getAnswers(int questionId){
		return questionDao.getAnswers(questionId);
		
	}
	
	public List<Question> getMyQuestions(int actorId){
		return questionDao.getMyQuestions(actorId);
		
	}
}
