package com.real.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hllocont
{
	
	  @RequestMapping("/")
	    public String home(){
	        return "home";
	    }
	  @RequestMapping("/home")
	    public String home1(){
	        return "home";
	    }

	
	  @RequestMapping("/contact")	
	  public String contact()
	  {
		  return "contact";
	  }
	  
	  @RequestMapping("/button")	
	  public String button()
	  {
		  return "button";
	  } 
	 
}

