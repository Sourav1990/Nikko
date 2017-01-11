package com.niit.nikkobackend.dao;

import java.util.List;

import com.niit.nikkobackend.model.Category;

public interface CategoryDAO1 {
	public List<Category> getAll();

	public Category get(String category_id);

	public boolean save(Category category);
	public boolean update(Category category);

	public boolean delete(Category category);

}
