package com.psl.space.entity;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
public class Question {

	@Id
	@GeneratedValue
	private int questionId;
	private String question;
	private TagType tag;
	private Date askDate;

	//maps relation between question and actor
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="actorId")
	private Actor actor;


	public int getQuestionId() {
		return questionId;
	}


	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}


	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public TagType getTag() {
		return tag;
	}


	public void setTag(TagType tag) {
		this.tag = tag;
	}


	public Date getAskDate() {
		return askDate;
	}


	public void setAskDate(Date askDate) {
		this.askDate = askDate;
	}


	public Actor getActor() {
		return actor;
	}


	public void setActor(Actor actor) {
		this.actor = actor;
	}


	@Override
	public String toString() {
		return "Question [questionId=" + questionId + ", question=" + question
				+ "]";
	}

}
