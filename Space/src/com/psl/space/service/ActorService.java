package com.psl.space.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.psl.space.dao.ActorDao;
import com.psl.space.dao.ActorDaoInt;
import com.psl.space.entity.Actor;

@Service
public class ActorService implements ActorServiceInt {

	@Autowired
	@Qualifier("actorDao")
	private ActorDaoInt actorDao;
	
	public Actor  addActor(Actor actor){
		 return actorDao.addActor(actor);
	}
	
	public Actor deleteActor(Actor actor){
		return actorDao.deleteActor(actor);
	}
	
	public Actor updateActor(Actor actor){
		
		return actorDao.updateActor(actor);
	}
	
	public Actor getActor(int actorId){
		return actorDao.getActor(actorId);
	}
	
	public boolean checkUsername(String username){
		return actorDao.checkUsername(username);
	}
	
}
