package com.niit.choco.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.choco.dao.impl.InsertDao;
import com.niit.choco.model.UserCreadential;
import com.niit.choco.model.UserDetails;

@Controller
@RequestMapping(value = "/register")
public class RegController {
	 @Autowired
	   InsertDao indao;
	
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView viewRegistration() 
    {
     ModelAndView mv=new ModelAndView("Register","command",new UserDetails());
     return mv;
    }
     
    @RequestMapping(method = RequestMethod.POST)
    public String processRegistration(@ModelAttribute("UserDetails")UserDetails reg,Map<String, Object> model) {
         
        // implement your own registration logic here...
         
        // for testing purpose:
        System.out.println("username: " + reg.getName());
        System.out.println("password: " + reg.getPassword());
       // System.out.println("email: " + user.getEmail());
       
        UserCreadential uc=new UserCreadential();
        uc.setUserName(reg.getUserName());
        uc.setPassword(reg.getPassword());
        uc.setEnabled(true);
        uc.setRole("USER_ROLE");
        indao.insertData(reg);
        indao.insertLogin(uc);
         
        return "insertSuccess";
    }
}