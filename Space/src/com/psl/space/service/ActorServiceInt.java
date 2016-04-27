package com.psl.space.service;

import org.springframework.stereotype.Component;

import com.psl.space.entity.Actor;

@Component
public interface ActorServiceInt {
	public Actor  addActor(Actor actor);
	public Actor deleteActor(Actor actor);
	public Actor updateActor(Actor actor);
	public Actor getActor(int actorId);
	public boolean checkUsername(String username);

}
