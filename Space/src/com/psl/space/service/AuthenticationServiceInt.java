package com.psl.space.service;

import org.springframework.stereotype.Component;

import com.psl.space.entity.Authentication;

@Component
public interface AuthenticationServiceInt {
	public Authentication  addAuthentication(Authentication question);
	public Authentication deleteAuthentication(Authentication question);
	public Authentication updateAuthentication(Authentication question);
	public Authentication getAuthentication(int questionId);
	public Authentication checkAuth(String username,String password);
}
