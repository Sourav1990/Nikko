package com.niit.nikkobackend.model;

import java.io.Serializable;
import java.util.UUID;

public class BillingAddress implements Serializable {

	private static final long serialVersionUID = 1L;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private String country;
	private String paymentMethod;
	private String orderID;
	private String shp_address1;
	private String shp_address2;
	private String shp_city;
	private String shp_state;
	private String shp_country;

	public String getOrderID() {
		return orderID;
	}

	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}

	

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getShp_address1() {
		return shp_address1;
	}

	public void setShp_address1(String shp_address1) {
		this.shp_address1 = shp_address1;
	}

	public String getShp_address2() {
		return shp_address2;
	}

	public void setShp_address2(String shp_address2) {
		this.shp_address2 = shp_address2;
	}

	public String getShp_city() {
		return shp_city;
	}

	public void setShp_city(String shp_city) {
		this.shp_city = shp_city;
	}

	public String getShp_state() {
		return shp_state;
	}
	

	public String getShp_country() {
		return shp_country;
	}

	public void setShp_country(String shp_country) {
		this.shp_country = shp_country;
	}

	public void setShp_state(String shp_state) {
		this.shp_state = shp_state;
	}


}
