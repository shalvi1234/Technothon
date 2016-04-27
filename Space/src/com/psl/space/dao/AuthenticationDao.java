package com.psl.space.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.psl.space.entity.Actor;
import com.psl.space.entity.Authentication;
import com.psl.space.entity.Question;

@Repository
public class AuthenticationDao implements AuthenticationDaoInt{

	private SessionFactory sessionFactory= new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	
	public Authentication addAuthentication(Authentication authentication){
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.save(authentication);
		session.getTransaction().commit();
	
		return authentication;
	}
	
	public Authentication getAuthentication(int authenticationId){
		Authentication authentication;
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		authentication=(Authentication)session.get(Authentication.class,authenticationId);
		session.getTransaction().commit();
		return authentication;
	}
	
	public Authentication updateAuthentication(Authentication authentication){
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.update(authentication);
		session.getTransaction().commit();

		return authentication;
	}
	
	public Authentication deleteAuthentication(Authentication authentication){
		
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.delete(authentication);
		session.getTransaction().commit();

		return authentication;
	}
	
public Authentication checkAuth(String username,String password){
		
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		Authentication authentication= null;
		Criteria criteria = session.createCriteria(Authentication.class);
		criteria.add(Restrictions.eq("username", username));
		criteria.add(Restrictions.eq("password", password));
		authentication = (Authentication)criteria.uniqueResult();
		session.getTransaction().commit();

		return authentication;
	}
	
}
