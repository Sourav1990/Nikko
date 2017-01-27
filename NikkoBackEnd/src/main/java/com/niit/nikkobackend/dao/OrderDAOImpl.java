package com.niit.nikkobackend.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.nikkobackend.model.Order;
import com.niit.nikkobackend.model.Supplier;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public OrderDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Order> getAll(String id) {
		String hql = "from Order where user_id =" + "'" + id + "' and status=" + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Transactional
	public void saveOrUpdate(Order order) {

		sessionFactory.getCurrentSession().saveOrUpdate(order);
	}

	@Transactional
	public boolean update(Order order) {

		return false;
	}

	@Transactional
	public String delete(String id) {
		Order order = new Order();
		order.setOrderID(id);
		try {
			sessionFactory.getCurrentSession().delete(order);
		} catch (HibernateException e) {
			e.printStackTrace();
			return e.getMessage();
		}
		return null;
	}

	@Transactional
	public Order get(String id) {
		String hql = "from Order where user_id =" + "'" + id + "' and status=" + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Order> getAll = (List<Order>) query.list();
		if (getAll != null && !getAll.isEmpty()) {
			return getAll.get(0);
		}
		return null;
	}

	@Transactional
	public long getTotalAmount(String id) {
		String hql = "select sum(price) from Order where userID=" + "'" + id + "' " + " and status =" + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		Long sum = (Long) query.uniqueResult();
		return sum;
	}
}