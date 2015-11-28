package com.gao.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.gao.www.Cart;
import com.gao.www.CartItem;
import com.gao.www.Category;
import com.gao.www.Product;
import com.gao.www.SalesItem;
import com.gao.www.SalesOrder;
import com.gao.www.User;
import com.gao.www.util.DB;

import sun.security.pkcs11.Secmod.DbMode;

public class OrderMySQLDAO {

	public void saveOrder(SalesOrder salesOrder) {
		Connection connection = DB.getConn();
		String sql = "insert into salesorder values(null,?,?,?,?)";
		PreparedStatement preparedStatement = DB.getPreparedStmt(connection, sql, true);
		ResultSet resultSet = null;
		try {
			connection.setAutoCommit(false);
			preparedStatement.setInt(1, salesOrder.getUser().getId());
			preparedStatement.setString(2, salesOrder.getAddr());
			preparedStatement.setTimestamp(3, salesOrder.getOdate());
			preparedStatement.setInt(4, salesOrder.getStatus());
			preparedStatement.executeUpdate();
			resultSet = preparedStatement.getGeneratedKeys();
			resultSet.next();
			int key = resultSet.getInt(1);
			
			sql = "insert into salesitem values(null,?,?,?,?)";
			preparedStatement = DB.getPreparedStmt(connection, sql);
			Cart cart = salesOrder.getCart();
			List<CartItem> cartItems = cart.getItems();
System.out.println("database " + cartItems.size() );
			for(int i = 0; i < cartItems.size(); i++) {
				CartItem cartItem = cartItems.get(i);
				preparedStatement.setInt(1, cartItem.getProductId());
				preparedStatement.setDouble(2, cartItem.getPrice());
				preparedStatement.setInt(3, cartItem.getCount());
				preparedStatement.setInt(4, key);
				preparedStatement.executeUpdate();
			}
			connection.commit();
			connection.setAutoCommit(true);
			
		} catch (SQLException e) {
			try {
				connection.rollback();
				connection.setAutoCommit(true);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
			DB.close(connection);
			DB.close(resultSet);
		}
	}

	public List<SalesOrder> getOrders(int pageNo, int pageSize) {
		List<SalesOrder> list = new ArrayList<SalesOrder>();
		Connection connection = DB.getConn();
		String sql = "select salesorder.id,salesorder.userid,salesorder.addr,salesorder.odate,salesorder.status,user.id uid,user.username,"
				+ "user.password,user.phone,user.addr uaddr,user.rdate"
				+ " from salesorder join user on (salesorder.userid = user.id) limit " + (pageNo-1) * pageSize + "," + pageSize;
		Statement statement = DB.getStat(connection);
		ResultSet resultSet = DB.getRes(statement, sql);
		try {
			while(resultSet.next()) {
				SalesOrder salesOrder = new SalesOrder();
				User user = new User();
				
				user.setAddr(resultSet.getString("uaddr"));
				user.setId(resultSet.getInt("uid"));
				user.setPassword(resultSet.getString("password"));
				user.setPhone(resultSet.getString("phone"));
				user.setRdate(resultSet.getTimestamp("rdate"));
				user.setUsername(resultSet.getString("username"));
				
				salesOrder.setAddr(resultSet.getString("addr"));
				salesOrder.setId(resultSet.getInt("id"));
				salesOrder.setOdate(resultSet.getTimestamp("odate"));
				salesOrder.setStatus(resultSet.getInt("status"));
				salesOrder.setUser(user);
				
				list.add(salesOrder);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public SalesOrder loadById(int id) {
		SalesOrder salesOrder = null;
		Connection connection = DB.getConn();
		String sql = "select salesorder.id,salesorder.userid,salesorder.addr,salesorder.odate,salesorder.status,user.id uid,user.username,"
				+ "user.password,user.phone,user.addr uaddr,user.rdate"
				+ " from salesorder join user on (salesorder.userid = user.id) where salesorder.id=" + id; 
		Statement statement = DB.getStat(connection);
		ResultSet resultSet = DB.getRes(statement, sql);
		try {
			while(resultSet.next()) {
				salesOrder = new SalesOrder();
				User user = new User();
				
				user.setAddr(resultSet.getString("uaddr"));
				user.setId(resultSet.getInt("uid"));
				user.setPassword(resultSet.getString("password"));
				user.setPhone(resultSet.getString("phone"));
				user.setRdate(resultSet.getTimestamp("rdate"));
				user.setUsername(resultSet.getString("username"));
				
				salesOrder.setAddr(resultSet.getString("addr"));
				salesOrder.setId(resultSet.getInt("id"));
				salesOrder.setOdate(resultSet.getTimestamp("odate"));
				salesOrder.setStatus(resultSet.getInt("status"));
				salesOrder.setUser(user);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return salesOrder;
	}

	public List<SalesItem> getSalesItems(SalesOrder salesOrder) {
		List<SalesItem> salesItems = new ArrayList<SalesItem>();
		
		Connection connection = DB.getConn();
		String sql = "select salesitem.id,salesitem.unitprice,salesitem.pcount,product.id pid,product.name,product.descr,product.normalprice,"
				+ "product.memberprice,product.pdate from salesitem join product on (salesitem.productid=product.id) "
				+ "where salesitem.orderid=" + salesOrder.getId();
System.out.println(sql);
		Statement statement = DB.getStat(connection);
		ResultSet resultSet = DB.getRes(statement, sql);
		
		try {
			while(resultSet.next()) {
				SalesItem salesItem = new SalesItem();
				Product product = new Product();
				
				product.setDescr(resultSet.getString("descr"));
				product.setMemberPrice(resultSet.getDouble("memberprice"));
				product.setName(resultSet.getString("name"));
				product.setId(resultSet.getInt("pid"));
				product.setNormalPrice(resultSet.getDouble("normalprice"));
				product.setPdate(resultSet.getTimestamp("pdate"));
				
				salesItem.setId(resultSet.getInt("id"));
				salesItem.setPcount(resultSet.getInt("pcount"));
				salesItem.setProduct(product);
				salesItem.setSalesOrder(salesOrder);
				salesItem.setUnitprice(resultSet.getDouble("unitprice"));
				
				salesItems.add(salesItem);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return salesItems;
	}

}
