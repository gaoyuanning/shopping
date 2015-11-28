package com.gao.www;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	List<CartItem> items = new ArrayList<CartItem>();

	public List<CartItem> getItems() {
		return items;
	}

	public void setItems(List<CartItem> items) {
		this.items = items;
	}
	
	public void add(CartItem item) {
		for(int i = 0; i < items.size(); i++) {
			CartItem cartItem = items.get(i);
			if(cartItem.getProductId() == item.getProductId()) {
				cartItem.setCount(cartItem.getCount() + 1);
				return;
			}
		}
		items.add(item);
	}

	public double getTotalPrice() {
		double totalPrice = 0.0;
		for(int i = 0; i < items.size(); i++) {
			CartItem cartItem = items.get(i);
			totalPrice += cartItem.getTotalPrice();
		}

		return totalPrice;
	}
}
