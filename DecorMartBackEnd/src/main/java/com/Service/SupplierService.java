package com.Service;

import java.util.List;

import com.Model.Supplier;

public interface SupplierService {

	public void insertSupplier(Supplier supplier);
	public List<Supplier> getAllSuppliers();
}
