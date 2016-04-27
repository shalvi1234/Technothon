package com.psl.space.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import twitter4j.TwitterException;

import com.google.gson.Gson;
import com.psl.space.entity.Tweet;
import com.psl.space.service.TweetService;
import com.psl.space.service.TweetServiceInt;

@Controller
public class RemoteDataController {

	
	@Autowired
	@Qualifier("tweetService")
	TweetServiceInt tweetService;
	
	
	@RequestMapping("apod")
	public  @ResponseBody String  getAPOD(){
		
		System.out.println("Getting data for APOD");
		System.setProperty("proxyHost", "goaproxy.persistent.co.in");
		System.setProperty("proxyPort", "8080");
		
		System.getProperties().put("https.proxyHost", "goaproxy.persistent.co.in");
		System.getProperties().put("https.proxyPort", "8080");
		System.getProperties().put("https.proxyUser", "ravi_jabagoud");
		System.getProperties().put("https.proxyPassword", "Shrishail123");
		
		String restURL="https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY";
		RestTemplate restTemplate = new RestTemplate();
		String apodJSON;
		try{
			apodJSON=restTemplate.getForObject(restURL, String.class);
		}
		catch(Exception e){
			return "{\"msg\":\"connection problem\"}";
		}
		System.out.println(apodJSON);
		return apodJSON;
	}
	

	@RequestMapping(value="apod",params="action=page")
	public String  getAPODPage(){
		System.out.println("Entered APOD CONTROLLLER");
		return "apoddisplay";
	}
	
	
	@RequestMapping(value="wiki/{title}")
	public  @ResponseBody String  getWiki(@PathVariable("title") String title){
		System.setProperty("proxyHost", "goaproxy.persistent.co.in");
		System.setProperty("proxyPort", "8080");
		System.setProperty("https.proxyHost", "goaproxy.persistent.co.in");
		System.setProperty("https.proxyPort", "8080");
		String restURL="https://en.wikipedia.org/w/api.php?format=jsonfm&action=query&prop=extracts&exintro=&explaintext=&titles="+title;
		RestTemplate restTemplate = new RestTemplate();
		String wikiJSON=restTemplate.getForObject(restURL, String.class);
		System.out.println(wikiJSON);
		return wikiJSON;
	}
	
	
	@RequestMapping(value="astro/{name}")
	public  @ResponseBody String  getAstronomyData(@PathVariable("name") String name){
		System.setProperty("proxyHost", "goaproxy.persistent.co.in");
		System.setProperty("proxyPort", "8080");
		System.out.println("Inside astro lookup data");
		String astroURL="http://www.strudel.org.uk/lookUP/json/?name="+name;
		RestTemplate restTemplate = new RestTemplate();
		String astroJSON=null;
		try{
			 astroJSON=restTemplate.getForObject(astroURL, String.class);
		}
		catch(Exception e){
			return "{\"status\":\"connection problem\"}";
		}
		
		
		System.out.println(astroJSON);
		return astroJSON;
	}
	
	@RequestMapping(value="gettweets")
	public  @ResponseBody String  getNasaTweet(){
		Gson gson=new Gson();
		System.setProperty("proxyHost", "goaproxy.persistent.co.in");
		System.setProperty("proxyPort", "8080");
		List<String> tweetsString;
		try{
			 tweetsString=tweetService.get_tweets();
		}
		catch(TwitterException e){
			String msg="{\"tweet\":\"connection problem\"}";
			List<String> msgList=new ArrayList<String>();
			msgList.add(msg);
			System.out.println("Twitter exeption catched");
			return gson.toJson(msgList);
		}
		

		
		
		List<Tweet> tweets=new ArrayList<Tweet>();
		
		for(String tweetString:tweetsString){
			Tweet tweet = new Tweet();
			tweet.setTweet(tweetString);
			tweets.add(tweet);
		}
		String tweetJSON=gson.toJson(tweets);
		System.out.println("tweet in json"+tweetJSON);
		return tweetJSON;
	}
}
