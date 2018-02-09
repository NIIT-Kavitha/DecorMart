package com.Dao;

import java.util.List;

import com.Model.User;

public interface UserDao {

	public void addUser(User user);
	public List<User> getAllUsers();
	
	User getUserByUsername(String name);
}
