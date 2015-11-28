package com.gao.www;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.gao.www.util.DB;

public class CategoryDAO {
	public static void save(Category c) {
		Connection connection = DB.getConn();
		String sql = "";
		if(c.getId() == -1) {
			sql = "insert into category values(null, ?, ?, ?, ?,?)";
		} else {
			sql = "insert into category values(" + c.getId() + ", ?, ?, ?, ?,?)";
		}
		PreparedStatement preparedStatement = DB.getPreparedStmt(connection, sql);
		try {
			preparedStatement.setInt(1, c.getPid());
			preparedStatement.setString(2, c.getName());
			preparedStatement.setString(3, c.getDescr());
			preparedStatement.setInt(4, c.isIsleaf() ? 0 : 1);
			preparedStatement.setInt(5, c.getGrade());
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(connection);
			DB.close(preparedStatement);
		}
	}
	
	public static void getCategories(List<Category> categories, int id) {
		Connection connection = DB.getConn();
		getCategories(connection, categories, id);
		DB.close(connection);
	}
	
	private static void getCategories(Connection connection, List<Category> categories, int id) {
		String sql = "select * from category where pid = " + id;
		Statement statement = DB.getStat(connection);
		ResultSet rs = DB.getRes(statement, sql);
		try {
			while(rs.next()) {
				Category category = new Category();
				category.setDescr(rs.getString("descr"));
				category.setGrade(rs.getInt("grade"));
				category.setId(rs.getInt("id"));
				category.setIsleaf(rs.getInt("isleaf") == 0 ? true : false);
				category.setName(rs.getString("name"));
				category.setPid(id);
				categories.add(category);
				if(!category.isIsleaf()) {
					getCategories(categories, category.getId());
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void addChildCategory(String name, String descr, int pid) {
		Connection connection = DB.getConn();
		
		String sql = "select * from category where id = " + pid;
		Statement statement = DB.getStat(connection);
		ResultSet rs = DB.getRes(statement, sql);
		int grade = 1;
		try {
			if(rs.next()) {
				grade = rs.getInt("grade");
			} 
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		sql = "update category set isleaf = 1 where id = " + pid;
		DB.executeUpdate(statement, sql);
		DB.close(statement);
		DB.close(rs);
		
		sql = "insert into category values(null, ?, ?, ?, ?,?)";
		PreparedStatement preparedStatement = DB.getPreparedStmt(connection, sql);
		try {
			preparedStatement.setInt(1, pid);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, descr);
			preparedStatement.setInt(4, 0);
			preparedStatement.setInt(5, grade + 1);
			preparedStatement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(connection);
			DB.close(preparedStatement);
		}
	}
	
	public static void deleteCategory(int id, int pid) {
		Connection connection = DB.getConn();
		String sql = "select * from category where pid = " + id;
		Statement statement = DB.getStat(connection);
		ResultSet rs = DB.getRes(statement, sql);
		
		try {
			while(rs.next()) {
				boolean isleaf = rs.getInt("isleaf") == 0 ? true : false;
				if(!isleaf) {
					deleteCategory(rs.getInt("id"), rs.getInt("pid"));
				} else {
					sql = "delete from category where id = " + rs.getInt("id");
					DB.executeUpdate(statement, sql);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		sql = "delete from category where id = " + id;
		DB.executeUpdate(statement, sql);
		sql = "select count(*) from category where pid = " + pid;
		rs = DB.getRes(statement, sql);
		int cnt = 0;
		try {
			while(rs.next()) {
				cnt++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(cnt == 0) {
			sql = "update category set isleaf = 0 where id = " + pid;
			DB.executeUpdate(statement, sql);
		}
		
		DB.close(statement);
		DB.close(rs);
		DB.close(connection);
		
	}
	
	public static Category loadById(int id) {
		Category category = new Category();
		
		Connection connection = DB.getConn();
		String sql = "select * from category where id = " + id;
		Statement statement = DB.getStat(connection);
		ResultSet rs = DB.getRes(statement, sql);
		try {
			rs.next();
			category.setDescr(rs.getString("descr"));
			category.setGrade(rs.getInt("grade"));
			category.setId(rs.getInt("id"));
			category.setIsleaf(rs.getInt("isleaf") == 0 ? true : false);
			category.setName(rs.getString("name"));
			category.setPid(rs.getInt("pid"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return category;
	}

	public static List<Category> getChilds(int id) {
		List<Category> categories = new ArrayList<Category>();
		
		Connection connection = DB.getConn();
		Statement statement = DB.getStat(connection);
		String sql = "select * from category where pid = " + id;
		ResultSet resultSet = DB.getRes(statement, sql);
		try {
			while(resultSet.next()) {
				Category category = new Category();
				category.setDescr(resultSet.getString("descr"));
				category.setGrade(resultSet.getInt("grade"));
				category.setId(resultSet.getInt("id"));
				category.setIsleaf(resultSet.getInt("isleaf") == 0 ? true : false);
				category.setName(resultSet.getString("name"));
				category.setPid(id);
				categories.add(category);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return categories;
	}
}












