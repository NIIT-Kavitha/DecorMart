package com.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;

import com.Dao.OrderDao;
import com.Model.Orders;
import com.Service.OrderService;

public class OrderServiceImpl implements OrderService {

	@Autowired
	OrderDao orderDao;
	
	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	public void insertOrder(Orders order) {
		orderDao.insertOrder(order);
		
	}

}
