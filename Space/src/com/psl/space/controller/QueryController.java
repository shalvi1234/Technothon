package com.psl.space.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.psl.space.entity.Query;
import com.psl.space.service.QueryService;
import com.psl.space.service.QueryServiceInt;

@Controller
public class QueryController {

	@Autowired
	@Qualifier("queryService")
	public QueryServiceInt queryService;
	
	@RequestMapping(value="query",params="action=page")
	public String getQueryPage(){
	 
	 
		return "contactus";
		
	}
	
	@RequestMapping("query/add")
	public  @ResponseBody String  addQuery(@RequestParam("query") String query,
			@RequestParam("email") String email){
		Query newQuery=new Query();
		newQuery.setEmail(email);
		newQuery.setQuery(query);
		queryService.addQuery(newQuery);
		
		return "Your query has been submitted successfully!";
	}
	
}
