package com.Service;

import java.util.List;

import com.Model.User;

public interface UserService {

	
	public List<User> getAllUsers();

	public void addUser(User user);
	
	User getUserByUsername(String name);
}
