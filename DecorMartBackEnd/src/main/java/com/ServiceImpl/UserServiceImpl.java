package com.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Service.UserService;
import com.Dao.UserDao;
import com.Model.User;

@Service
public class UserServiceImpl implements UserService {
	
	 @Autowired
		private UserDao userDao;

			public UserDao getUserDao() {
			return userDao;
		}

		public void setUserDao(UserDao userDao) {
			this.userDao = userDao;
		}

		    public void addUser(User user) {
				userDao.addUser(user);
			}

			List<User> user;
			public List<User> getAllUsers() {
				
				return user;
			}

}
