package com.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
        /*User users = new User();      

        users.setName(users.getName());
        users.setPassword(users.getPassword());
        users.setEmail(users.getEmail());
        users.setPhoneno(users.getPhoneno());
        users.setCountry(users.getCountry());
        
    	session.saveOrUpdate(users);
*/
	session.getTransaction().commit();
}

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

}
