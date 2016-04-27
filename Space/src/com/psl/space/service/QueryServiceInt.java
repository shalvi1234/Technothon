package com.psl.space.service;

import org.springframework.stereotype.Component;

import com.psl.space.entity.Query;

@Component
public interface QueryServiceInt {
	public Query  addQuery(Query query);
	public Query deleteQuery(Query query);
	public Query updateQuery(Query query);
	public Query getQuery(int queryId);
}
