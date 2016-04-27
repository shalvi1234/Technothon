package com.psl.space.dao;

import org.springframework.stereotype.Component;

import com.psl.space.entity.Query;

@Component
public interface QueryDaoInt {
	public Query addQuery(Query query);
	public Query getQuery(int queryId);
	public Query updateQuery(Query query);
	public Query deleteQuery(Query query);

}
