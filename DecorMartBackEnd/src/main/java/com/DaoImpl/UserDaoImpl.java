package com.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.UserDao;
import com.Model.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	public UserDaoImpl(SessionFactory s) {
		sessionFactory=s;
	}

	public SessionFactory getSessionFactory() {
	return sessionFactory;
}

public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

	public void addUser(User user) {
		Session session = sessionFactory.openSession();

		System.out.println("Test");

		session.beginTransaction();
        session.saveOrUpdate(user);  
        session.getTransaction().commit();
	}
        /*User users = new User();      

        users.setName(users.getName());
        users.setPassword(users.getPassword());
        users.setEmail(users.getEmail());
        users.setPhoneno(users.getPhoneno());
        users.setCountry(users.getCountry());
        
    	session.saveOrUpdate(users);*/
	
    	/*
    	User users = new User();      

        users.setUsername(user.getName());
        users.setPassword(user.getPassword());
        users.setEnabled(true);

*/
	

	/*private SessionFactory sessionFactory;
	
	public void addUser(User user) {
		Session session = sessionFactory.getCurrentSession();
        session.persist(user);
		
	}*/

	public List<User> getAllUsers() {
		Session session = sessionFactory.getCurrentSession();
        List<User> UserList = session.createQuery("from User").list();
		return UserList;
	}

	
	public User getUserByUsername(String name) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User where name = ?");
        query.setString(0, name);

        return (User) query.uniqueResult();
		
		/*return sessionFactory.getCurrentSession().get(User.class, name);*/
	}
	
}
