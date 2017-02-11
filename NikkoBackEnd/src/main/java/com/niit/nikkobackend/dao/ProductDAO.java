package com.niit.nikkobackend.dao;

import java.util.List;

import com.niit.nikkobackend.model.Product;;

public interface ProductDAO {
	public List<Product> getAll();

	public Product get(String product_id);

	public boolean save(Product product);
	public boolean update(Product product);

	public boolean delete(Product product);
	/*public Product searchProduct(String product_id);
}*/
}