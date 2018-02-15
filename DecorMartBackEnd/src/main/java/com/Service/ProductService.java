package com.Service;

import java.util.List;

import com.Model.Product;

public interface ProductService {
	public void insertProduct(Product product);
	public List<Product> getAllProducts();
	public void updateProduct(Product product);
	public void deleteProduct(int id);
	public Product getbyid(int id);
}
