package com.niit.choco.controllers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.choco.dao.impl.InsertDao;
import com.niit.choco.model.UserCreadential;


@Controller
public class LoginController {
	int count=0;
	@Autowired
	InsertDao catDAO;
	
	LoginController()
	{
		System.out.println("at Controllerrrrrrrrrrrrrrrrrrr");
	}
	@RequestMapping("/about")
	public String showAboutUs() 
	{
		System.out.println("at Method AboutUSSSSSSSSSSSSSSSSSS");
	return "about";
	}
	@RequestMapping("/ContactUs")
	public String showContactUs() 
	{
	return "ContactUs";
	}
	
	@RequestMapping("/reg")
	public String goReg() 
	{
	return "Register";
	}
	
	@RequestMapping("/Welcome")
	public String goTowelcome() 
	{
		
	return "Welcome";
	}
	
	@RequestMapping("/adminhome")
	public String adminHome() 
	{
		
	return "AdminHome";
	}
	
	@RequestMapping("/Login")
	public String loginHome()
	{
		return "Login";
	}
	
	@RequestMapping("/LoginError")
	public String loginErrorShow()
	{
		return "Login";
	}
	@RequestMapping("/LoginSuccess")
	public String loginSuccess()
	{
		return "AdminHome";
	}
	@RequestMapping("/logout")
	public String logoutt() 
	{
		
	return "perform_logout";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/login_session_attributes")
	public String login_session_attributes(HttpSession session,Model model) {
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		UserCreadential  user = catDAO.getUser(userid);
		session.setAttribute("userId", user.getUserName());
		session.setAttribute("name", user.getPassword());
		session.setAttribute("LoggedIn", "true");
		
		 //session.setAttribute("crtcnt",count);
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		String role="USER_ROLE";
		for (GrantedAuthority authority : authorities) 
		{
		  
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 session.setAttribute("UserLoggedIn", true);
		    	 session.setAttribute("UserName", user.getUserName());
			 page="/index1";
		    	 session.setAttribute("test",1);
		    	 session.setAttribute("log","log");
		    	
		     }
		     else 
		     {
		    	 session.setAttribute("Administrator",true);
		    	 session.setAttribute("UserName", user.getUserName());
		    	 session.setAttribute("test",1);
		    	 session.setAttribute("log",1);
		    	
		    	 page="/AdminHome";
			
		    }
		}
		return page;
	}


	
	

}
