package com.niit.nikkobackend.dao;


import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.nikkobackend.model.Category;
import com.niit.nikkobackend.model.Cart;

@Repository("cartDAO")
public class MyCartDAOImpl implements MyCartDAO {
	private static Logger log = LoggerFactory.getLogger(MyCartDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	

	@Transactional
	public List<Cart> getAll(String user_id) {

		String hql = "from Cart where user_id =" + "'" + user_id + "' and status=" + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}


	@Transactional
	public void save(Cart myCart) {
		log.debug("------>>Starting of method save");
	myCart.setAddedDate(new Date());
		
		sessionFactory.getCurrentSession().save(myCart);
		log.debug("------>>Ending of method save");
	}

	@Transactional
	public Long getTotalAmount(String user_id) {

		String hql = "select sum(price) from Cart where user_id=" + "'" + user_id + "' " + " and status =" + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		Long sum = (Long) query.uniqueResult();
		return sum;
	}
	

	@Transactional
	public Cart get(int id) {
		return (Cart) sessionFactory.getCurrentSession().get(Cart.class, id);
	}

}
