package com.real.controller;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.real.model.Product;
import com.real.model.User;
import com.real.service.UserService;

@Controller
public class UserController {

private	UserService userService;
 User ulogin;
	@Autowired(required=true)
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@RequestMapping("/Register")
	public String regis(Model model)
	{
		
		model.addAttribute("userForm", new User());
		return "Register";
	}
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String userAdd(@Valid @ModelAttribute("userForm") User u,BindingResult result,Model model)
	
	{
		if(result.hasErrors())
		{
			return "Register";
		}
		else
		{
			
		userService.addUser(u);
	return "redirect:/home";

	}
	}
	@RequestMapping(value="/login")
	public ModelAndView loginPage(@RequestParam(value="error",required=false)
	String error,@RequestParam(value="logout",required=false)String logout,Model model)
	{
		
		model.addAttribute("ulogin",new User());
	
	if(error !=null)
	{
		model.addAttribute("error","invalid username and password");
	}
	if(logout !=null)
	{
		model.addAttribute("msg","you have been logout successfully");
	}
	return new ModelAndView("login");
	
	}


	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginPagePost(@Valid @ModelAttribute("ulogin") User u, BindingResult result,Model model,@RequestParam("id") int id)
	{
		System.out.println("we are goning to login");
		String value=null;
		this.ulogin=u;
		if(result.hasErrors())
		{
			return "login";
		}
		else
		{
			System.out.println("is going to login without error");
			List<User> userList=userService.getAllUsers();
			for(User user:userList)
			{
				if(ulogin.getEmailId().equals(user.getEmailId()) && ulogin.getPassword().equals(user.getPassword()))
				{
					value="home";
				}
				else
				{
					
					System.out.println("not exits");
							model.addAttribute("userpass","username and password does not exits");
							value="login";
				}
				
			}
			return "redirect:/+value";
		}
	}
	}



	

