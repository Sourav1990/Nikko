package com.niit.nikkobackend.dao;

import java.util.List;

import com.niit.nikkobackend.model.Supplier;

public interface SupplierDAO {
	public List<Supplier> getAll();

	public Supplier get(String supplier_id);

	public boolean save(Supplier supplier);
	public boolean update(Supplier supplier);

	public boolean delete(Supplier supplier);

}
