package com.psl.space.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.psl.space.entity.Answer;
import com.psl.space.entity.Question;

@Component
public interface QuestionDaoInt {
	public Question addQuestion(Question question);
	public Question getQuestion(int questionId);
	public Question updateQuestion(Question question);
	public Question deleteQuestion(Question question);
	public List<Question> getQuestionsByNumber(int number);
	public List<Answer> getAnswers(int questionId);
	public List<Question> getMyQuestions(int actorId);

}
