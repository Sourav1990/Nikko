package com.niit.nikkobackend.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.nikkobackend.model.User;
@Repository("userDAO")

public class UserDAOImpl implements UserDAO {
	Logger log = LoggerFactory.getLogger(UserDAOImpl.class);

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<User> getAll() {
		@SuppressWarnings("unchecked")
		List<User> getAll = (List<User>) sessionFactory.getCurrentSession().createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return getAll;
	}

	@Transactional
	public User get(String user_id) {
		
		return (User) sessionFactory.getCurrentSession().get(User.class, user_id);
	}

	@Transactional
	public boolean save(User user) {
		try {
			sessionFactory.getCurrentSession().save(user);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public boolean update(User user) {
		try {
			sessionFactory.getCurrentSession().update(user);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	

	@Transactional
	public boolean delete(String user_id) {
		try {
			User user = new User();
			user.setUser_id(user_id);
			sessionFactory.getCurrentSession().delete(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Transactional
	public User isValidUser(String user_id,String password) {
		// TODO Auto-generated method stub
		String hql = "from User where user_id= " +"'"+user_id+"'"+" and " + " password =" +"'"+ password+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		return (User)query.uniqueResult();
	}
	}
	


	
