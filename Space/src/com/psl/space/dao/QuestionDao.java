package com.psl.space.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.psl.space.entity.Answer;
import com.psl.space.entity.Question;

@Repository
public class QuestionDao implements QuestionDaoInt{

	private SessionFactory sessionFactory= new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	
	public Question addQuestion(Question question){
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.save(question);
		session.getTransaction().commit();

		return question;
	}
	
	public Question getQuestion(int questionId){
		Question question;
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		question =(Question)session.get(Question.class,questionId);
		session.getTransaction().commit();
		return question;
	}
	
	public Question updateQuestion(Question question){
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.update(question);
		session.getTransaction().commit();

		return question;
	}
	
	public Question deleteQuestion(Question question){
		
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.delete(question);
		session.getTransaction().commit();

		return question;
	}
	
	public List<Question> getQuestionsByNumber(int number){
		
		Session session = sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		Criteria criteria = session.createCriteria(Question.class);
		criteria.setFetchMode("actor", FetchMode.EAGER);
		criteria.setFetchMode("actor.authentication", FetchMode.EAGER);
		criteria.addOrder(Order.desc("questionId"));
		if(number>0)
		criteria.setMaxResults(number);
		List<Question> list= criteria.list();
		session.getTransaction().commit();
		return list;
		
		
	}
	
	public List<Answer> getAnswers(int questionId){
		
		Session session = sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		Criteria criteria = session.createCriteria(Answer.class);
		criteria.add(Restrictions.eq("question.questionId", questionId));
		List<Answer>results=criteria.list();
	
		session.getTransaction().commit();
		
		//just to remove cycle set question null
		/*for(Answer answer :results){
			answer.setActor(null);
		}*/
		return results;
		
		
	}
	
public List<Question> getMyQuestions(int actorId){
		
		Session session = sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		Criteria criteria = session.createCriteria(Question.class);
		criteria.add(Restrictions.eq("actor.actorId", actorId));
		List<Question>results=criteria.list();
		session.getTransaction().commit();
		return results;
		
		
	}
}
