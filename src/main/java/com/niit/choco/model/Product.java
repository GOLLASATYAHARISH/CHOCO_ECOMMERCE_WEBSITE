package com.niit.choco.model;

import java.io.Serializable;

public class Product implements Serializable {

	private String productId;
	private String productName;
	private String productBrand;
	private float productPrice;
	private int productStack;
	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductBrand() {
		return productBrand;
	}

	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}

	public float getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductStack() {
		return productStack;
	}

	public void setProductStack(int productStack) {
		this.productStack = productStack;
	}

	
	public Product(String productId, String productName, String productBrand, float productPrice, int productStack) {
		
		this.productId = productId;
		this.productName = productName;
		this.productBrand = productBrand;
		this.productPrice = productPrice;
		this.productStack = productStack;
	}

	

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	
	
}
