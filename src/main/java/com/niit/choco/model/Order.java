package com.niit.choco.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Order  implements Serializable{
	@Id
	private String orderId;
@Column
	private String orderDate;
@Column
private int totalAmmount;
@Column
private String shippingAdd;
}
