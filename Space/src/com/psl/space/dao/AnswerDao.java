package com.psl.space.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;
import com.psl.space.entity.Answer;

@Repository
public class AnswerDao implements AnswerDaoInt{

	private SessionFactory sessionFactory= new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	
	public Answer addAnswer(Answer answer){
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.save(answer);
		session.getTransaction().commit();

		return answer;
	}
	
	public Answer getAnswer(int answerId){
		Answer answer;
		Session session=sessionFactory.getCurrentSession();
		answer=(Answer)session.get(Answer.class,answerId);
	
		return answer;
	}
	
	public Answer updateAnswer(Answer answer){
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.update(answer);
		session.getTransaction().commit();

		return answer;
	}
	
	public Answer deleteAnswer(Answer answer){
		
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.delete(answer);
		session.getTransaction().commit();

		return answer;
	}
}
