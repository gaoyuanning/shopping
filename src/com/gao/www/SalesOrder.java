package com.gao.www;

import java.sql.Timestamp;
import java.util.List;

import javafx.css.SimpleStyleableStringProperty;

public class SalesOrder {
	int id;
	User user;
	String addr;
	Timestamp odate;
	Cart cart;
	int status;
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Timestamp getOdate() {
		return odate;
	}
	public void setOdate(Timestamp odate) {
		this.odate = odate;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	public void save() {
		OrderManager.getInstance().saveOrder(this);
	}
	
	public List<SalesItem> getSalesItems() {
		return OrderManager.getInstance().getSalesItems(this);
	}
}
