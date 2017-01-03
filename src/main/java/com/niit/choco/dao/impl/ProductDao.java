package com.niit.choco.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.choco.model.Product;

@Repository
public class ProductDao {

	public List addProduct()
	{
	ArrayList<Product> al=new ArrayList();
	Product p1=new Product("p01","desktop","DELL",23000,5);
	Product p2=new Product("p11","desktop","HP",25000,3);
	Product p3=new Product("p12","desktop","HP",25000,3);
	al.add(p1);
	al.add(p2);
	al.add(p3);
	return al;
	}
	
	
	

}
