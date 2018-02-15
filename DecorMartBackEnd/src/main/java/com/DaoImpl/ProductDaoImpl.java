package com.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.ProductDao;
import com.Model.Category;
import com.Model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	 
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public ProductDaoImpl(SessionFactory s){
		sessionFactory=s;
	}
	public void insertProduct(Product product) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(product);
		session.getTransaction().commit();
		
	}

	public List<Product> getAllProducts() {
		Session session = sessionFactory.getCurrentSession();
        List<Product> ProductList = session.createQuery("from product").list();
		return ProductList;
		
	}

	public void updateProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.update(product);		
	}

	public void deleteProduct(int id) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Product WHERE pid = "+id).executeUpdate();
		}

	public Product getbyid(int id) {
		Session session=sessionFactory.getCurrentSession();
		return (Product) session.get(Product.class, id);
	}

}
