package com.Dao;

import java.util.List;

import com.Model.Category;

public interface CategoryDao {

	public void insertCategory(Category category);
	public List<Category> getAllCategories();
}
