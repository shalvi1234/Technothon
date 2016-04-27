package com.psl.space.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.psl.space.dao.AnswerDao;
import com.psl.space.dao.AnswerDaoInt;
import com.psl.space.entity.Answer;

@Service
public class AnswerService implements AnswerServiceInt {

	@Autowired
	@Qualifier("answerDao")
	private AnswerDaoInt answerDao;
	
	public Answer  addAnswer(Answer answer){
		 return answerDao.addAnswer(answer);
	}
	
	public Answer deleteAnswer(Answer answer){
		return answerDao.deleteAnswer(answer);
	}
	
	public Answer updateAnswer(Answer answer){
		
		return answerDao.updateAnswer(answer);
	}
	
	public Answer getAnswer(int answerId){
		return answerDao.getAnswer(answerId);
	}
	
}
