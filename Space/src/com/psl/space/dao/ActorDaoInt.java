package com.psl.space.dao;

import org.springframework.stereotype.Component;



import com.psl.space.entity.Actor;
@Component
public interface ActorDaoInt {
	public Actor addActor(Actor actor);
	public Actor getActor(int actorId);
	public Actor updateActor(Actor actor);
	public Actor deleteActor(Actor actor);
	public boolean checkUsername(String username);
}
