package com.DaoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.Dao.OrderDao;
import com.Model.Orders;

public class OrderDaoImpl implements OrderDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void insertOrder(Orders order) {
		
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.persist(order);
		session.getTransaction().commit();
	}

}
