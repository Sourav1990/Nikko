package com.niit.nikkobackend.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
@Entity
@Table(name="CART")
@Component
public class Cart {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)	
private int ID;
	@Column(name="USER_ID")
private String user_id;
private String product_id;
@Column(name="NAME")
private String product_name;
private int price;
private char Status;
private int Quantity;

@Column(name="date_added")
@Temporal(TemporalType.DATE)
private Date addedDate;
public int getID() {
	return ID;
}
public void setID(int iD) {
	ID = iD;
}
public String getUser_id() {
	return user_id;
}
public void setUser_id(String user_id) {
	this.user_id = user_id;
}
public String getProduct_id() {
	return product_id;
}
public void setProduct_id(String product_id) {
	this.product_id = product_id;
}
public String getProduct_name() {
	return product_name;
}
public void setProduct_name(String product_name) {
	this.product_name = product_name;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public char getStatus() {
	return Status;
}
public void setStatus(char status) {
	Status = status;
}
public int getQuantity() {
	return Quantity;
}
public void setQuantity(int quantity) {
	Quantity = quantity;
}
public Date getAddedDate() {
	return addedDate;
}
public void setAddedDate(Date addedDate) {
	this.addedDate = addedDate;
}


}
