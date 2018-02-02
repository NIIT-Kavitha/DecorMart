package com.Dao;

import java.util.List;

import com.Model.Supplier;

public interface SupplierDao {

	public void insertSupplier(Supplier supplier);
	public List<Supplier> getAllSuppliers();
}
