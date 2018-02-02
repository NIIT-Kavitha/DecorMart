package com.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.SupplierDao;
import com.Model.Supplier;
import com.Service.SupplierService;

@Service
public class SupplierServiceImpl implements SupplierService {

	@Autowired
	private SupplierDao supplierDao;

	public SupplierDao getSupplierDao() {
		return supplierDao;
	}

	public void setSupplierDao(SupplierDao supplierDao) {
		this.supplierDao = supplierDao;
	}

	public void insertSupplier(Supplier supplier) {
		supplierDao.insertSupplier(supplier);
		
	}

	public List<Supplier> getAllSuppliers() {
		return supplierDao.getAllSuppliers();
	}
}
