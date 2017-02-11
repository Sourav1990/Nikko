package com.niit.nikkobackend.model;

import java.io.Serializable;

public class ShippingAddress implements Serializable {


	private static final long serialVersionUID = 1L;
	private String shp_address1;
	private String shp_address2;
	private String shp_city;
	private String shp_state;
	private String shp_country;
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
	public void setShp_state(String shp_state) {
		this.shp_state = shp_state;
	}
	public String getShp_country() {
		return shp_country;
	}
	public void setShp_country(String shp_country) {
		this.shp_country = shp_country;
	}
	
}
