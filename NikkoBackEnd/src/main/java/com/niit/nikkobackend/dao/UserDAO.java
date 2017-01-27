package com.niit.nikkobackend.dao;

import java.util.List;

import com.niit.nikkobackend.model.User;

public interface UserDAO {

	public List<User> getAll();

	public User get(String user_id);

	public boolean save(User user);
	public boolean update(User user);

	public boolean delete(String user_id);
	public User isValidUser(String user_id,String password) ;
	
}
