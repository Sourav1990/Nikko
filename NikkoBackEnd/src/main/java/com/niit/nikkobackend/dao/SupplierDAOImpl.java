package com.niit.nikkobackend.dao;

import java.util.List;

//import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.nikkobackend.model.Supplier;
@Repository("supplierdao")
public class SupplierDAOImpl {

//	@Autowired
//	private SessionFactory sessionFactory;
//
//	public SupplierDAOImpl(SessionFactory sessionFactory) {
//	this.sessionFactory=sessionFactory;
//	}
//	@Transactional
//	public List<Supplier> list() {
//	String hql="from Supplier";
//	Query query=sessionFactory.getCurrentSession().createQuery(hql);
//		return query.list();
//	}
//	@Transactional
//	public Supplier get(String supplier_id) {
//		
//		return (Supplier) sessionFactory.getCurrentSession().get(Supplier.class, supplier_id);
//	}
//	@Transactional
//	public boolean save(Supplier supplier) {
//		try {
//			sessionFactory.getCurrentSession().save(supplier);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return false;
//		}
//		return true;
//	}
//	@Transactional
//	public boolean update(Supplier supplier) {
//		try {
//			sessionFactory.getCurrentSession().update(supplier);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return false;
//		}
//		return true;
//	}
//	@Transactional
//	public boolean delete(Supplier supplier) {
//		try {
//			sessionFactory.getCurrentSession().delete(supplier);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			return false;
//		}
//		return true;
//	}
}
