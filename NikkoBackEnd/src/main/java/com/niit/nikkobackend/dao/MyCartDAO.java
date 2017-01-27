package com.niit.nikkobackend.dao;

import java.util.List;

import com.niit.nikkobackend.model.Cart;


public interface MyCartDAO {
	public List<Cart> getAll(String user_id);

	public Cart get(int id);

	public void save(Cart myCart);

	public Long getTotalAmount(String id);
	
}
