package com.niit.choco.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;
import com.niit.choco.model.Category;
import com.niit.choco.model.UserCreadential;
import com.niit.choco.model.UserDetails;

@Repository
public class InsertDao {
	 @Autowired
	private SessionFactory sessionFactory;

	
	 public void setSessionFactory(SessionFactory sessionFactory) {
	     this.sessionFactory = sessionFactory;
	 }
	public void insertData(UserDetails r1)
	{
		
		    
		 
		    
		//creating session object    
		Session session=sessionFactory.openSession();    
		    
		//creating transaction object    
		Transaction t=session.beginTransaction();    
		        
		
		
		session.save(r1);//persisting the object    
		    
		t.commit();//transaction is commited    
		session.close();  
		
		
		
		
			}
	
	
	
	public void insertLogin(UserCreadential r1)
	{
		
		    
		 
		    
		//creating session object    
		Session session=sessionFactory.openSession();    
		    
		//creating transaction object    
		Transaction t=session.beginTransaction();    
		        
		
		
		session.save(r1);//persisting the object    
		    
		t.commit();//transaction is commited    
		session.close();  
		
		
		
		
			}
	
	
	
	@Transactional
	public String  list() {
		//creating session object    
				Session session=sessionFactory.openSession();    
				    
				//creating transaction object    
				Transaction t=session.beginTransaction();    
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) session.createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		Gson gson=new Gson();
		String data=gson.toJson(listCategory);
		t.commit();//transaction is commited    
		session.close();  
		
		return data;
	}

	@Transactional
	public void saveOrUpdate(Category category) {
		//creating session object    
				Session session=sessionFactory.openSession();    
				    
				//creating transaction object    
				Transaction t=session.beginTransaction();    
		session.saveOrUpdate(category);
		
		t.commit();//transaction is commited    
		session.close();  
		
	
	}
	@Transactional
	public void delete(String id) {
		//creating session object    
				Session session=sessionFactory.openSession();    
				    
				//creating transaction object    
				Transaction t=session.beginTransaction();    
		Category CategoryToDelete = new Category();
		CategoryToDelete.setId(id);
		session.delete(CategoryToDelete);
		t.commit();//transaction is commited    
		session.close();  
		
	}

	@Transactional
	public Category get(String id) {
		//creating session object    
				Session session=sessionFactory.openSession();    
				    
				//creating transaction object    
				Transaction t=session.beginTransaction();    
		String hql = "from"+" Category"+" where id=" + "'"+id+"'";
		@SuppressWarnings("rawtypes")
		Query query = session.createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();
		
		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		t.commit();//transaction is commited    
		session.close();  
		
		return null;
	}
	
	
	
	@Transactional
	public UserCreadential getUser(String username) {
		//creating session object    
				Session session=sessionFactory.openSession();    
				    
				//creating transaction object    
				Transaction t=session.beginTransaction();    
		String hql = "from "+" UserCreadential "+" where username=" + "'"+username+"'";
		@SuppressWarnings("rawtypes")
		Query query = session.createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UserCreadential> listUser = (List<UserCreadential>) query.list();
		
		if (listUser != null && !listUser.isEmpty()) {
			return listUser.get(0);
		}
		t.commit();//transaction is commited    
		session.close();  
		
		return null;
	}
	



}
