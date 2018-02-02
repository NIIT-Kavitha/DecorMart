package com.Service;

import java.util.List;

import com.Model.Product;

public interface ProductService {
	public void insertProduct(Product product);
	public List<Product> getAllProducts();
}
