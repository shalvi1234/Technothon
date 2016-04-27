package com.psl.space.entity;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.UniqueConstraint;

@Entity

public class Authentication {

	@Id
	@GeneratedValue
	private int authenticationId;
	@Column(name="username",unique=true)
	private String username;
	private String password;
	private boolean isLocked;
	private Date lastLogin;
	
	@OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="actorId")
	private Actor actor;
	
	
	public int getAuthenticationId() {
		return authenticationId;
	}
	public void setAuthenticationId(int authenticationId) {
		this.authenticationId = authenticationId;
	}
	public String getUserName() {
		return username;
	}
	public void setUserName(String userName) {
		this.username = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isLocked() {
		return isLocked;
	}
	public void setLocked(boolean isLocked) {
		this.isLocked = isLocked;
	}
	public Date getLastLogin() {
		return lastLogin;
	}
	public void setLastLogin(Date lastLogin) {
		this.lastLogin = lastLogin;
	}
	
	
	public Actor getActor() {
		return actor;
	}
	public void setActor(Actor actor) {
		this.actor = actor;
	}

}
