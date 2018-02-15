package com.Dao;

import java.util.List;

import com.Model.Product;

public interface ProductDao {
	public void insertProduct(Product product);
	public List<Product> getAllProducts();
	public void updateProduct(Product product);
	public void deleteProduct(int id);
	public Product getbyid(int id);
	
}
