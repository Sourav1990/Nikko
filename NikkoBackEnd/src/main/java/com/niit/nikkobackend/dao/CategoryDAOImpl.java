package com.niit.nikkobackend.dao;

import java.util.List;



import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.nikkobackend.model.Category;


@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO1 {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public List<Category> getAll() {
	String hql="from Category";
	Query query=sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
	@Transactional
	public Category get(String category_id) {
		
		return (Category) sessionFactory.getCurrentSession().get(Category.class, category_id);
	}
	@Transactional
	public boolean save(Category category) {
		try {
			sessionFactory.getCurrentSession().save(category);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}
	@Transactional
	public boolean update(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}
	@Transactional
	public boolean delete(Category category) {
		try {
			sessionFactory.getCurrentSession().delete(category);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
