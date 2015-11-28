package com.gao.www;

import java.util.List;

import com.gao.www.dao.OrderMySQLDAO;
import com.gao.www.dao.ProductDAO;
import com.gao.www.dao.ProductMySQLDAO;

public class OrderManager {
	private OrderMySQLDAO orderDAO = null;
	private static OrderManager orderManager = null;
	
	public static OrderManager getInstance() {
		if(orderManager == null) {
			orderManager = new OrderManager();
			orderManager.setOrderDAO(new OrderMySQLDAO());
		}
		
		return orderManager;
	}

	private void setOrderDAO(OrderMySQLDAO orderMySQLDAO) {
		this.orderDAO = orderMySQLDAO;
	}

	public void saveOrder(SalesOrder salesOrder) {
		this.orderDAO.saveOrder(salesOrder);
	}
	
	public List<SalesOrder> getOrders(int pageNo, int pageSize) {
		return this.orderDAO.getOrders(pageNo, pageSize);
	}
	
	public SalesOrder loadById(int id) {
		return this.orderDAO.loadById(id);
	}

	public List<SalesItem> getSalesItems(SalesOrder salesOrder) {
		return this.orderDAO.getSalesItems(salesOrder);
	}
	
}
