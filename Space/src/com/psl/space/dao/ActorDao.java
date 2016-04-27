package com.psl.space.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.psl.space.entity.Actor;
import com.psl.space.entity.Authentication;

@Repository
public class ActorDao implements ActorDaoInt{

	
	private SessionFactory sessionFactory= new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	
	public Actor addActor(Actor actor){
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.save(actor);
		session.getTransaction().commit();
		
		return actor;
	}
	
	public Actor getActor(int actorId){
		Actor actor;
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		actor=(Actor)session.get(Actor.class,actorId);
		session.getTransaction().commit();

		return actor;
	}
	
	public Actor updateActor(Actor actor){
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.update(actor);
		session.getTransaction().commit();

		return actor;
	}
	
	public Actor deleteActor(Actor actor){
		
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.delete(actor);
		session.getTransaction().commit();

		return actor;
	}
	
	public boolean checkUsername(String username){
		
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		Criteria criteria =session.createCriteria(Authentication.class);
		criteria.add(Restrictions.eq("username", username));
		Authentication authenticationObj=(Authentication)criteria.uniqueResult();
		session.getTransaction().commit();
		if(authenticationObj==null)
			return true;
		if(authenticationObj.getUserName().equals(username)){
			return false;
		}
		
		return true;
	}
}
