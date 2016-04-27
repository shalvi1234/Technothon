package com.psl.space.service;

import org.springframework.stereotype.Component;

import com.psl.space.entity.Answer;

@Component
public interface AnswerServiceInt {
	public Answer  addAnswer(Answer answer);
	public Answer deleteAnswer(Answer answer);
	public Answer updateAnswer(Answer answer);
	public Answer getAnswer(int answerId);
}
