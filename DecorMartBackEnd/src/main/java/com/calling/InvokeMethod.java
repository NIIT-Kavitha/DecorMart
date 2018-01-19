package com.calling;

import com.Dao.UserDao;
import com.DaoImpl.UserDaoImpl;
import com.Model.User;

public class InvokeMethod {

	public static void main(String[] args) {
		UserDao userDao = new UserDaoImpl();
	      for (User user : userDao.getAllUsers()) {
	         System.out.println("Student: [Email: " + user.getEmail() + ", Name : " + user.getName() + " ,Phone No: "+user.getPhoneno()+",Address : "+user.getAddress()+",Country : "+user.getCountry()+"]");
	      }
	      
	      }

}
