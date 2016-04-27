package com.psl.space.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.psl.space.dao.QueryDao;
import com.psl.space.dao.QueryDaoInt;
import com.psl.space.entity.Query;
import com.psl.space.entity.Question;

@Service
public class QueryService implements QueryServiceInt {

	@Autowired
	@Qualifier("queryDao")
	private QueryDaoInt queryDao;
	
	public Query  addQuery(Query query){
		 return queryDao.addQuery(query);
	}
	
	public Query deleteQuery(Query query){
		return queryDao.deleteQuery(query);
	}
	
	public Query updateQuery(Query query){
		
		return queryDao.updateQuery(query);
	}
	
	public Query getQuery(int queryId){
		return queryDao.getQuery(queryId);
	}
	
}
