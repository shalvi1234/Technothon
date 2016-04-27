package com.psl.space.dao;

import org.springframework.stereotype.Component;

import com.psl.space.entity.Authentication;

@Component
public interface AuthenticationDaoInt {
	public Authentication addAuthentication(Authentication authentication);
	public Authentication getAuthentication(int authenticationId);
	public Authentication updateAuthentication(Authentication authentication);
	public Authentication deleteAuthentication(Authentication authentication);
	public Authentication checkAuth(String username,String password);
}
