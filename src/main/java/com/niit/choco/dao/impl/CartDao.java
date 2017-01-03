package com.niit.choco.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;
import com.niit.choco.model.AdminProduct;
import com.niit.choco.model.Cart;
import com.niit.choco.model.UserDetails;

@Repository
public class CartDao {

	 @Autowired
		private SessionFactory sessionFactory;

		
		 public void setSessionFactory(SessionFactory sessionFactory) {
		     this.sessionFactory = sessionFactory;
		 }
		public void insertCart(Cart c1)
		{
			    
			//creating session object    
			Session session=sessionFactory.openSession();    
			    
			//creating transaction object    
			Transaction t=session.beginTransaction();    
			        
			
			
			session.save(c1);//persisting the object    
			    
			t.commit();//transaction is commited    
			session.close();  
			
			
			
			
				}
		
		@Transactional
		public List<Cart> get(String id) {
			//creating session object    
					Session session=sessionFactory.openSession();    
					    
					//creating transaction object    
					Transaction t=session.beginTransaction();    
			String hql = "from"+" Cart"+" where cartuser=" + "'"+id+"'";
			@SuppressWarnings("rawtypes")
			Query query = session.createQuery(hql);
			
			@SuppressWarnings("unchecked")
			List<Cart> listCategory = (List<Cart>) query.list();
			
			if (listCategory != null && !listCategory.isEmpty()) {
				
				/*Gson gson = new Gson();
				
				String jsoncartlist=gson.toJson(listCategory);
				return jsoncartlist;
				*/
				return listCategory;
			}
			t.commit();//transaction is commited    
			session.close();  
			
			return null;
		}


		
		@Transactional
		public List<AdminProduct> getParticulerProd(int id) {
			//creating session object    
					Session session=sessionFactory.openSession();    
					    
					//creating transaction object    
					Transaction t=session.beginTransaction();    
			String hql = "from"+" AdminProduct "+" where aproductId=" +id;
			@SuppressWarnings("rawtypes")
			Query query = session.createQuery(hql);
			
			@SuppressWarnings("unchecked")
			List<AdminProduct> listCategory = (List<AdminProduct>) query.list();
			
			if (listCategory != null && !listCategory.isEmpty()) {
				
				/*Gson gson = new Gson();
				
				String jsoncartlist=gson.toJson(listCategory);
				return jsoncartlist;
				*/
				return listCategory;
			}
			t.commit();//transaction is commited    
			session.close();  
			
			return null;
		}

		
		@Transactional
		public List<UserDetails> getUser(String id) {
			//creating session object    
					Session session=sessionFactory.openSession();    
					    
					//creating transaction object    
					Transaction t=session.beginTransaction();    
			String hql = "from"+" UserDetails "+" where userName=" +"'"+id+"'";
			@SuppressWarnings("rawtypes")
			Query query = session.createQuery(hql);
			
			@SuppressWarnings("unchecked")
			List<UserDetails> listCategory = (List<UserDetails>) query.list();
			
			if (listCategory != null && !listCategory.isEmpty()) {
				
				/*Gson gson = new Gson();
				
				String jsoncartlist=gson.toJson(listCategory);
				return jsoncartlist;
				*/
				return listCategory;
			}
			t.commit();//transaction is commited    
			session.close();  
			
			return null;
		}

		
		
	
}
