package com.psl.space.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.psl.space.dao.AuthenticationDao;
import com.psl.space.dao.AuthenticationDaoInt;
import com.psl.space.entity.Actor;
import com.psl.space.entity.Authentication;

@Service
public class AuthenticationService implements AuthenticationServiceInt{

	@Autowired
	@Qualifier("authenticationDao")
	private AuthenticationDaoInt authenticationDao;
	
	public Authentication  addAuthentication(Authentication question){
		 return authenticationDao.addAuthentication(question);
	}
	
	public Authentication deleteAuthentication(Authentication question){
		return authenticationDao.deleteAuthentication(question);
	}
	
	public Authentication updateAuthentication(Authentication question){
		
		return authenticationDao.updateAuthentication(question);
	}
	
	public Authentication getAuthentication(int questionId){
		return authenticationDao.getAuthentication(questionId);
	}
	
	public Authentication checkAuth(String username,String password){
		
		return authenticationDao.checkAuth(username,password);
	}
	
	
}
