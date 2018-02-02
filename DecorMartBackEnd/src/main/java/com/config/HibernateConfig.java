package com.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.Dao.CategoryDao;
import com.Dao.ProductDao;
import com.Dao.SupplierDao;
import com.Dao.UserDao;
import com.DaoImpl.CategoryDaoImpl;
import com.DaoImpl.ProductDaoImpl;
import com.DaoImpl.SupplierDaoImpl;
import com.DaoImpl.UserDaoImpl;
import com.Model.Category;
import com.Model.Product;
import com.Model.Supplier;
import com.Model.User;


@Configuration
@EnableTransactionManagement
public class HibernateConfig 
{
	
 
    @Bean(name="sessionFactory")
    public SessionFactory getSessionFactory() {
        LocalSessionFactoryBuilder localSessionFactoryBuilder = new LocalSessionFactoryBuilder(getH2Database());
        localSessionFactoryBuilder.addAnnotatedClass(User.class);
        localSessionFactoryBuilder.addAnnotatedClass(Supplier.class);
        localSessionFactoryBuilder.addAnnotatedClass(Category.class);
        localSessionFactoryBuilder.addAnnotatedClass(Product.class);
        
        //localSessionFactoryBuilder.scanPackages("com.Model");
        localSessionFactoryBuilder.addProperties(getHibernateProperties());
        SessionFactory sessionFactory=localSessionFactoryBuilder.buildSessionFactory();
        return sessionFactory;
        //return localSessionFactoryBuilder.buildSessionFactory();
     }
  
    
     @Autowired
     @Bean(name= "dataSource")
    public DataSource getH2Database() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.h2.Driver");
        dataSource.setUrl("jdbc:h2:tcp://localhost/~/DecorMart");
        dataSource.setUsername("sa");
        dataSource.setPassword("");
        return dataSource;
    }
     
    private Properties getHibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
        properties.put("hibernate.show_sql","true");
        properties.put("hibernate.format_sql","true");
        properties.put("hibernate.hbm2ddl.auto", "update");
        return properties;        
    }
     
    @Bean(name="transactionManager")
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory s) {
       HibernateTransactionManager txManager = new HibernateTransactionManager(s);
      // txManager.setSessionFactory(s);
       return txManager;
    
    }
   @Autowired
    @Bean(name= "userDao")
    public UserDao getUserDao(SessionFactory s){
  
		return new UserDaoImpl(s);
    	
    }
   @Autowired
   @Bean(name= "supplierDao")
   public SupplierDao getSupplierDao(SessionFactory s){
	   
	   return new SupplierDaoImpl(s);
   }
   
   @Autowired
   @Bean(name="categoryDao")
   public CategoryDao getCategoryDao(SessionFactory s){
	   return new CategoryDaoImpl(s);
   }
   
   @Autowired
   @Bean(name="productDao")
   public ProductDao getProductDao(SessionFactory s){
	   return new ProductDaoImpl(s);
   }
}
