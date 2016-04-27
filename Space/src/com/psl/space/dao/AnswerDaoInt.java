package com.psl.space.dao;

import org.springframework.stereotype.Component;

import com.psl.space.entity.Answer;

@Component
public interface AnswerDaoInt {
	public Answer addAnswer(Answer answer);
	public Answer getAnswer(int answerId);
	public Answer updateAnswer(Answer answer);
	public Answer deleteAnswer(Answer answer);
}
