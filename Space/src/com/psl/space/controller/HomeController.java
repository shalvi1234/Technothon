package com.psl.space.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.psl.space.entity.Actor;
import com.psl.space.entity.Question;
import com.psl.space.entity.TagType;

@Controller
public class HomeController {

	@RequestMapping("/")
	public   String  defaultPage(){
	
		return "login";
	}
	@RequestMapping(value="login",params="action=page")
	public   String  homePage(){
	
		return "login";
	}
	
	@RequestMapping("gallery")
	public   String  galleryPage(){
	
		return "gallery";
	}
	
	@RequestMapping(value="signup",method=RequestMethod.GET)
	public   String  signUpPage(){
	
		return "signup";
	}
	
	@RequestMapping(value="contactus",method=RequestMethod.GET)
	public   String  contactUs(){
	
		return "contactus";
	}
	
	@RequestMapping(value="aboutus",method=RequestMethod.GET)
	public   String  aboutUs(){
	
		return "aboutus";
	}
	
	@RequestMapping(value="planets",method=RequestMethod.GET)
	public   String  getAllPlanets(){
	
		return "planets";
	}
	
	@RequestMapping(value="stars")
	public   String  getAllStars(){
	System.out.println("in starts controller");
		return "stars";
	}
	@RequestMapping(value="comets",method=RequestMethod.GET)
	public   String  getAllComets(){
	
		return "comets";
	}
	@RequestMapping(value="asteroids",method=RequestMethod.GET)
	public   String  getAllAsteroids(){
	
		return "asteroids";
	}
	@RequestMapping(value="meteors",method=RequestMethod.GET)
	public   String  getAllMeteors(){
	
		return "meteors";
	}
	@RequestMapping(value="satellites",method=RequestMethod.GET)
	public   String  getAllSatellites(){
	
		return "satellites";
	}
	
	
	@RequestMapping(value="aplanet",method=RequestMethod.GET)
	public   String  getPlanet(){
	
		return "aplanet";
	}
	
	@RequestMapping(value="astar")
	public   String  getStar(){
	System.out.println("in starts controller");
		return "astar";
	}
	@RequestMapping(value="acomet",method=RequestMethod.GET)
	public   String  getComet(){
	
		return "acomet";
	}
	@RequestMapping(value="anasteroid",method=RequestMethod.GET)
	public   String  getAsteroid(){
	
		return "anasteroid";
	}
	@RequestMapping(value="ameteor",method=RequestMethod.GET)
	public   String  getMeteor(){
	
		return "ameteor";
	}
	@RequestMapping(value="asatellite",method=RequestMethod.GET)
	public   String  getSatellite(){
	
		return "asatellite";
	}
	@RequestMapping(value="userwelcome",method=RequestMethod.GET)
	public   String  getUserWelcomePage(){
	
		return "userwelcome";
	}
	@RequestMapping(value="expertwelcome",method=RequestMethod.GET)
	public   String  getExpertWelcomePage(){
	
		return "expertwelcome";
	}
	@RequestMapping(value="solarsystem",method=RequestMethod.GET)
	public   String  getSolarSystem(){
	
		return "solarsystem";
	}
}
