package com.niit.nikkobackend.dao;

import java.util.List;

//import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.nikkobackend.model.Supplier;
@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {

	@Autowired
private SessionFactory sessionFactory;
	@Transactional
	public List<Supplier> getAll() {
	String hql="from Supplier";
	Query query=sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
	@Transactional
	public Supplier get(String supplier_id) {
		
		return (Supplier) sessionFactory.getCurrentSession().get(Supplier.class, supplier_id);
	}
	@Transactional
	public boolean save(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().save(supplier);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
@Transactional
public boolean update(Supplier supplier) {
	try {
		sessionFactory.getCurrentSession().update(supplier);
		return true;
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	
}
	@Transactional
	public boolean delete(Supplier supplier) {
		try {
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
}
