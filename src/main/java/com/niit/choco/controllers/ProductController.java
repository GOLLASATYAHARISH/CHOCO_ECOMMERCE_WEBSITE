package com.niit.choco.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.choco.dao.impl.AdminProductDAO;
import com.niit.choco.dao.impl.InsertDao;
import com.niit.choco.dao.impl.ProductDao;


@Controller
public class ProductController {
   @Autowired
	ProductDao dao;
   @Autowired
   InsertDao indao;
   
   @Autowired
	AdminProductDAO adProdDAO;
   
   @RequestMapping("/Product")
   public String showProduct(Model m)
   {
	   
	   
	   String adprod=adProdDAO.listAdProd();
		m.addAttribute("data3",adprod);
	  
	  
	  System.out.println("going to showproduct");
	  return "showProduct";
   }
   @RequestMapping("/cakes")
   public String showDesk(Model m)
   {
	   
	   
	   String adprod=adProdDAO.lisCatWise("cakes");
		m.addAttribute("data3",adprod);
	  
	  
	  System.out.println("going to showproduct");
	  return "showProduct";
   }
   
  
   
   @RequestMapping("/omlets")
   public String showLap(Model m)
   {
	   
	   
	   String adprod=adProdDAO.lisCatWise("omlets");
		m.addAttribute("data3",adprod);
	  
	  
	  System.out.println("going to showproduct");
	  return "showProduct";
   }
   
   @RequestMapping("/fries")
   public String showFries(Model m)
   {
	   
	   
	   String adprod=adProdDAO.lisCatWise("fries");
		m.addAttribute("data3",adprod);
	  
	  
	  System.out.println("going to showproduct");
	  return "showProduct";
   }
   @RequestMapping("/chocolates")
   public String showchocolates(Model m)
   {
	   
	   
	   String adprod=adProdDAO.lisCatWise("chocolates");
		m.addAttribute("data3",adprod);
	  
	  
	  System.out.println("going to showproduct");
	  return "showProduct";
   }
   
   
}
