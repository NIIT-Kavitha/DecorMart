package com.Service;

import java.util.List;

import com.Model.Category;

public interface CategoryService {

	public void insertCategory(Category category);
	public List<Category> getAllCategories();
}
