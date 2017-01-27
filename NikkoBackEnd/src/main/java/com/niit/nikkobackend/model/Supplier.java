package com.niit.nikkobackend.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Supplier {
	@Id
	private String supplier_id;
	@Column(name="NAME")
	private String supplier_name;
	@Column(name="ADDRESS")
	private String supplier_address;
	@Column(name="CONTACT")
	private String supplier_contact;
	//@OneToMany(mappedBy="supplier", fetch=FetchType.EAGER)
	//private Set<Product>products;
	/*public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}*/
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	public String getSupplier_address() {
		return supplier_address;
	}
	public void setSupplier_address(String supplier_address) {
		this.supplier_address = supplier_address;
	}
	public String getSupplier_contact() {
		return supplier_contact;
	}
	public void setSupplier_contact(String supplier_contact) {
		this.supplier_contact = supplier_contact;
	}
	
	
}
