package com.psl.space.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;
import com.psl.space.entity.Query;

@Repository
public class QueryDao implements QueryDaoInt{

	private SessionFactory sessionFactory= new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	
	public Query addQuery(Query query){
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.save(query);
		session.getTransaction().commit();
	
		return query;
	}
	
	public Query getQuery(int queryId){
		Query query;
		Session session=sessionFactory.getCurrentSession();
		query=(Query)session.get(Query.class,queryId);

		return query;
	}
	
	public Query updateQuery(Query query){
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.update(query);
		session.getTransaction().commit();

		return query;
	}
	
	public Query deleteQuery(Query query){
		
		Session session=sessionFactory.getCurrentSession();
		session.getTransaction().begin();
		session.delete(query);
		session.getTransaction().commit();
	
		return query;
	}
}
