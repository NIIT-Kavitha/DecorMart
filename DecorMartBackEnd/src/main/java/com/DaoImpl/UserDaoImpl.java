package com.DaoImpl;

import java.util.ArrayList;
import java.util.List;

import com.Dao.UserDao;
import com.Model.User;

public class UserDaoImpl implements UserDao {

	List<User> user;
	
	   public UserDaoImpl(){
		   user = new ArrayList<User>();
		      User user1 = new User("john@gmail.com","John","9898989898","chennai","1234","India");
		      user.add(user1);  	
	   }
	   
	   public List<User> getAllUsers() {
	      return user;
	   }

	
}
