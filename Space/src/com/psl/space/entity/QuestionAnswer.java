package com.psl.space.entity;

import java.util.List;

public class QuestionAnswer{
	private Question question;
	private List<Answer> answers;
	private boolean hasAnswers=true;
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	public List<Answer> getAnswers() {
		return answers;
	}
	public void setAnswers(List<Answer> answers) {
		this.answers = answers;
	}
	public boolean isHasAnswers() {
		return hasAnswers;
	}
	public void setHasAnswers(boolean hasAnswers) {
		this.hasAnswers = hasAnswers;
	}
	
	
}
