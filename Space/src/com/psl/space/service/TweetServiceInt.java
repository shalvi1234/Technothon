package com.psl.space.service;

import java.util.List;

import org.springframework.stereotype.Component;

import twitter4j.TwitterException;
@Component
public interface TweetServiceInt {
	public List<String> get_tweets() throws TwitterException;
}
