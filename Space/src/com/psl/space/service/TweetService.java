package com.psl.space.service;

import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;

@Service
public class TweetService implements TweetServiceInt {

	
	private String consumer_key="RbcjWifeNv1GiHwt2nJmqfkN1";
	private String consumer_secret="l0tUQDb0swtcFQg5frppZx705crnWc3aUlpB0MGtR0M6Wg9p3x";
	private String access_key="709970775781072897-mnoJdMaztlcZLo33n2GkKnbmHVAmytb";
	private String access_secrete="AhhCPl8QhE5ZmQtTtdFs0mGiPpyqng5RMhxgpZ3KGkA7n";
	//private String user="NASA";
	private List<String> strtweets=new ArrayList<String>();
	
	
	public List<String> get_tweets() throws TwitterException{
	
		ConfigurationBuilder cb=new ConfigurationBuilder();
		
		//List<Status> statuses=new ArrayList<Status>();
		cb.setOAuthConsumerKey(consumer_key);
		cb.setOAuthConsumerSecret(consumer_secret);
		cb.setOAuthAccessToken(access_key);
		cb.setOAuthAccessTokenSecret(access_secrete);
		
		Twitter twitter=new TwitterFactory(cb.build()).getInstance();
		System.getProperties().put("https.proxyHost", "goaproxy.persistent.co.in");
		System.getProperties().put("https.proxyPort", "8080");
		System.getProperties().put("https.proxyUser", "ravi_jabagoud");
		System.getProperties().put("https.proxyPassword", "Shrishail123");

		try {
	        Query query = new Query("from:NASA");
	        query.setCount(5);
	        QueryResult result;
	        result = twitter.search(query);
	        List<Status> tweets = result.getTweets();
	        for (Status tweet : tweets) {
	           // System.out.println("@" + tweet.getUser().getScreenName() + " - " + tweet.getText());
	        	String str=tweet.getUser().getScreenName() + " - " + tweet.getText();
	        	String str1=str.replaceAll("http.*?//s", "");
	            strtweets.add(str1);
	        }
	    }
	    catch (TwitterException te) {
	        te.printStackTrace();
	        System.out.println("Failed to search tweets: " + te.getMessage());
	        throw te;
	      
	    }
		return strtweets;
	  }
}
