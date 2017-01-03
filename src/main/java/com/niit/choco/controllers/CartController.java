package com.niit.choco.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.choco.dao.impl.AdminProductDAO;
import com.niit.choco.dao.impl.CartDao;
import com.niit.choco.model.AdminProduct;
import com.niit.choco.model.Cart;
import com.niit.choco.model.UserDetails;

@Controller
public class CartController {
	int countup=0;
	int totprice=0;
	int i=1;
	@Autowired
	AdminProductDAO adProdDAO;
	@Autowired
	CartDao cartDAO;


	@RequestMapping(value = "/AddToCart", method = RequestMethod.GET)
	public String AddToCart(@RequestParam("adpid") int pid,@RequestParam("d") int quant, HttpSession session,Model m) {

		AdminProduct ad = adProdDAO.DispRecord(pid);
		Cart c = new Cart();
	
		countup++;
		session.setAttribute("cartcnt",countup);
		//c.setCartid(++i);
		c.setPid(""+ad.getAproductId());
		c.setCartuser(session.getId().substring(25));
		c.setItemname(ad.getAprodName());
		c.setPrice(ad.getAprice());
		c.setTotal(quant*ad.getAprice());
		c.setQty(quant);
		totprice=totprice+quant*ad.getAprice();
		session.setAttribute("cartTot",totprice);
		cartDAO.insertCart(c);
		
		List<Cart> mycartitem=cartDAO.get(session.getId().substring(25));
		if(mycartitem!=null)
		{
		
		m.addAttribute("CartList",mycartitem);
		
		System.out.println("pro idddddddddddddddddddddd" + ad.getAproductId());
		}
		return "ShowCart";

	}

	@RequestMapping(value = "/ShowCart",method = RequestMethod.GET)
	   public String cartLogo( HttpSession session,Model m)
	   {
		
		List<Cart> mycartitem=cartDAO.get(session.getId().substring(25));
		if(mycartitem!=null)
		{
		
		m.addAttribute("CartList",mycartitem);
		
		//System.out.println("pro idddddddddddddddddddddd" + ad.getAproductId());
		}

		   
		  return "ShowCart";
	   }


	
	@RequestMapping(value = "/Single",method = RequestMethod.GET)
	   public String Single(@RequestParam("adpid") int pid, HttpSession session,Model m)
	   {
		   
		List<AdminProduct> adprod=cartDAO.getParticulerProd(pid);
		 AdminProduct c=adprod.get(0);
		 System.out.println(c.getAprodName());
		 System.out.println(c.getAprodName());
		 System.out.println(c.getAprodName());
		 
			m.addAttribute("data3",adprod);
		  
		  
		  System.out.println("going to showproduct");
		  return "single";
	   }

	
	/*
	@RequestMapping(value = "/Payment",method = RequestMethod.GET)
	   public String payment()
	   {
		   
		
		  return "payment";
	   }

	@RequestMapping(value = "/Thank",method = RequestMethod.GET)
	   public String Thank()
	   {
		   
		
		  return "Thank";
	   }
	   
	   */

	
	
	@RequestMapping(value = "/OrderConfirm", method = RequestMethod.GET)
	public String orderConfirm( HttpSession session,Model m) {

		
		String usernam=(String)session.getAttribute("userId");
		List<UserDetails> userData=cartDAO.getUser(usernam);
		if(userData!=null)
		{
		
			UserDetails ud=userData.get(0);
			System.out.println("pro idddddddddddddddddddddd" + ud.getUserName());
		m.addAttribute("UserInfo",userData);
		
		
		}
		return "OrderConfirm";

	}
	
	

}
