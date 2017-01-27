package com.niit.nikkobackend.dao;

import java.util.List;

import com.niit.nikkobackend.model.Order;

public interface OrderDAO {
	public List<Order> getAll(String id);

	public Order get(String id);

	public void saveOrUpdate(Order order);

	public String delete(String id);
	public long getTotalAmount(String id);
}
