package com.gao.www;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.gao.www.util.*;
import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;

public class User {
	
	private int id;
	private String username;
	private String password;
	private String phone;
	private String addr;
	private Date rdate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	
	public void save() {
		Connection connection = DB.getConn();
		String sql = "insert into user values(null, ?, ?, ?, ?,?)";
		PreparedStatement preparedStatement = DB.getPreparedStmt(connection, sql);
		try {
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, phone);
			preparedStatement.setString(4, addr);
			preparedStatement.setTimestamp(5, new Timestamp(rdate.getTime()));
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(connection);
			DB.close(preparedStatement);
		}
	}
	
	public void update() {
		Connection connection = DB.getConn();
		String sql = "update user set username = '" + username + "',phone = '" 
		+ phone + "',addr = '" + addr + "' where id = " + id;
		Statement statement = DB.getStat(connection);
		try {
			statement.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static List<User> getAllUsers() {
		List<User> users = new ArrayList<User>();
		Connection connection = DB.getConn();
		String sql = "select * from user";
		Statement statement = DB.getStat(connection);
		ResultSet rs = DB.getRes(statement, sql);
		try {
			while(rs.next()) {
				int id = rs.getInt("id");
				String username = rs.getString("username");
				String password = rs.getString("password");
				String phone = rs.getString("phone");
				String addr = rs.getString("addr");
				Date rdate = rs.getDate("rdate");
				User user = new User();
				user.setAddr(addr);
				user.setId(id);
				user.setPassword(password);
				user.setPhone(phone);
				user.setRdate(rdate);
				user.setUsername(username);
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return users;
	}
	
	public static void deleteUser(int id) {
		Connection connection = DB.getConn();
		String sql = "delete from user where id = " + id;
		Statement statement = DB.getStat(connection);
		DB.executeUpdate(statement, sql);
	}
	
	public static User validate(String username, String password) throws UserNotFoundException, PasswordNotCorrectException {
		User user = new User();
		
		Connection connection = DB.getConn();
		String sql = "select * from user where username = '" + username + "'";
		Statement statement = DB.getStat(connection);
		ResultSet rs = DB.getRes(statement, sql);
		
		try {
			if(!rs.next()) {
				throw new UserNotFoundException();
			} else if (!rs.getString("password").equals(password)){
				throw new PasswordNotCorrectException();
			} else {
				user.setAddr(rs.getString("addr"));
				user.setId(rs.getInt("id"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getString("phone"));
				user.setRdate(rs.getDate("rdate"));
				user.setUsername(rs.getString("username"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return user;
	}
}























