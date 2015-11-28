package com.gao.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.gao.www.Category;
import com.gao.www.Product;
import com.gao.www.util.DB;
import com.sun.crypto.provider.RSACipher;

public class ProductMySQLDAO implements ProductDAO{
	public List<Product> getProducts() {
		List<Product> list = new ArrayList<Product>();
		Connection connection = DB.getConn();
		String sql = "select * from product";
		Statement statement = DB.getStat(connection);
		ResultSet resultSet = DB.getRes(statement, sql);
		try {
			while(resultSet.next()) {
				Product p = new Product();
				p.setId(resultSet.getInt("id"));
				p.setName(resultSet.getString("name"));
				p.setDescr(resultSet.getString("descr"));
				p.setNormalPrice(resultSet.getDouble("normalprice"));
				p.setMemberPrice(resultSet.getDouble("memberprice"));
				p.setPdate(resultSet.getTimestamp("pdate"));
				p.setCategoryId(resultSet.getInt("categoryid"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Product> getProducts(int pageNo, int pageSize) {
		List<Product> list = new ArrayList<Product>();
		Connection connection = DB.getConn();
		String sql = "select product.id,product.name,product.descr,product.normalprice,product.memberprice,product.pdate,product.categoryid,"
				+ "category.id cid,category.name cname,category.grade,category.descr cdescr,category.isleaf,category.pid"
				+ " from product join category on (product.categoryid = category.id) limit " + (pageNo-1) * pageSize + "," + pageSize;
		Statement statement = DB.getStat(connection);
		ResultSet resultSet = DB.getRes(statement, sql);
		try {
			while(resultSet.next()) {
				Product p = new Product();
				Category category = new Category();
				p.setId(resultSet.getInt("id"));
				p.setName(resultSet.getString("name"));
				p.setDescr(resultSet.getString("descr"));
				p.setNormalPrice(resultSet.getDouble("normalprice"));
				p.setMemberPrice(resultSet.getDouble("memberprice"));
				p.setPdate(resultSet.getTimestamp("pdate"));
				p.setCategoryId(resultSet.getInt("categoryid"));
				
				category.setDescr(resultSet.getString("cdescr"));
				category.setGrade(resultSet.getInt("grade"));
				category.setId(resultSet.getInt("cid"));
				category.setIsleaf(resultSet.getInt("isleaf") == 0 ? true : false);
				category.setName(resultSet.getString("cname"));
				category.setPid(resultSet.getInt("pid"));
				
				p.setCategory(category);
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public  int findProducts(List<Product> products, int[] categoryId,
									  String keyword,
									  double lowNormalPrice,
									  double highNormalPrice,
									  double lowMemberPrice,
									  double highMemberPrice,
									  Date startDate,
									  Date endDate,
									  int pageNo,
									  int pageSize) {
		int pageCount = 0;
		Connection connection = DB.getConn();
		String sql = "select * from product where 1=1";
		if(categoryId != null && categoryId.length > 0) {
			if(categoryId.length == 1 && categoryId[0] == 0) {
				
			} else {
				String idString = "(";
				for(int i = 0; i < categoryId.length; i++) {
					if(i < categoryId.length - 1) {
						idString += categoryId[i] + ",";
					} else {
						idString += categoryId[i];
					}
				}
				idString += ")";
				sql += " and categoryid in " + idString;
			}
		}
		
		if(keyword != null) {
			sql += " and name like '%" + keyword + "%'";
		}
		
		if(lowNormalPrice >= 0) {
			sql += " and price > " + lowNormalPrice;
		}
		
		if(highNormalPrice > 0) {
			sql += " and price < " + highNormalPrice;
		}
		
		if(lowMemberPrice >=0) {
			sql += " and price > " + lowMemberPrice;
		}
		
		if(highMemberPrice > 0) {
			sql += " and price < " + highMemberPrice;
		}
		
		if(startDate != null) {
			sql += " and pdate >= '" + new SimpleDateFormat("yyyy-MM-dd").format(startDate) + "'"; 
		}
		
		if(endDate != null) {
			sql += " and pdate <= '" + new SimpleDateFormat("yyyy-MM-dd").format(endDate) + "'"; 
		}
		
		String sqlCount = sql.replaceFirst("select \\*", "select count(*)");
		
		sql += " limit " + (pageNo-1) * pageSize + "," + pageSize;
//System.out.println(sql);
		Statement statement = DB.getStat(connection);
		ResultSet resultSet = DB.getRes(statement, sql);
		try {
			while(resultSet.next()) {
				Product p = new Product();
				p.setId(resultSet.getInt("id"));
				p.setName(resultSet.getString("name"));
				p.setDescr(resultSet.getString("descr"));
				p.setNormalPrice(resultSet.getDouble("normalprice"));
				p.setMemberPrice(resultSet.getDouble("memberprice"));
				p.setPdate(resultSet.getTimestamp("pdate"));
				p.setCategoryId(resultSet.getInt("categoryid"));
				products.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ResultSet countRS = DB.getRes(statement, sqlCount);
		try {
			countRS.next();
			pageCount = (countRS.getInt(1) + pageSize - 1) / pageSize;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pageCount;
	}
	
	public boolean deleteProductByCategoryId(int categoryId) {
		return false;
	}
	
	public boolean deleteProductById(int id) {
		return false;
	}
	
	public boolean updateProduct(Product p) {
		Connection connection = DB.getConn();
		String sql = "update product set name=?,descr=?,normalprice=?,memberprice=?,categoryid=? where id = " + p.getId();
		PreparedStatement preparedStatement = DB.getPreparedStmt(connection, sql);
		
		try {
			preparedStatement.setString(1, p.getName());
			preparedStatement.setString(2, p.getDescr());
			preparedStatement.setDouble(3, p.getNormalPrice());
			preparedStatement.setDouble(4, p.getMemberPrice());
			preparedStatement.setInt(5, p.getCategoryId());
			preparedStatement.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}

	@Override
	public boolean addProduct(Product p) {
		Connection connection = DB.getConn();
		String sql = "insert into product values(null,?,?,?,?,?,?)";
		PreparedStatement preparedStatement = DB.getPreparedStmt(connection, sql);
		
		try {
			preparedStatement.setString(1, p.getName());
			preparedStatement.setString(2, p.getDescr());
			preparedStatement.setDouble(3, p.getNormalPrice());
			preparedStatement.setDouble(4, p.getMemberPrice());
			preparedStatement.setTimestamp(5, p.getPdate());
			preparedStatement.setInt(6, p.getCategoryId());
			preparedStatement.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}

	@Override
	public Product loadById(int id) {
		Product p = null;
		
		Connection connection = DB.getConn();
		String sql = "select product.id,product.name,product.descr,product.normalprice,product.memberprice,product.pdate,product.categoryid,"
				+ "category.id cid,category.name cname,category.grade,category.descr cdescr,category.isleaf,category.pid"
				+ " from product join category on (product.categoryid = category.id) and product.id = " + id;
		Statement statement = DB.getStat(connection);
		ResultSet resultSet = DB.getRes(statement, sql);
		try {
			while(resultSet.next()) {
				p = new Product();
				p.setId(resultSet.getInt("id"));
				p.setName(resultSet.getString("name"));
				p.setDescr(resultSet.getString("descr"));
				p.setNormalPrice(resultSet.getDouble("normalprice"));
				p.setMemberPrice(resultSet.getDouble("memberprice"));
				p.setPdate(resultSet.getTimestamp("pdate"));
				p.setCategoryId(resultSet.getInt("categoryid"));
				
				Category category = new Category();
				category.setDescr(resultSet.getString("cdescr"));
				category.setGrade(resultSet.getInt("grade"));
				category.setId(resultSet.getInt("cid"));
				category.setIsleaf(resultSet.getInt("isleaf") == 0 ? true : false);
				category.setName(resultSet.getString("cname"));
				category.setPid(resultSet.getInt("pid"));
				
				p.setCategory(category);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return p;
	}

	public List<Product> getLatestProducts(int count) {
		List<Product> list = new ArrayList<Product>();
		Connection connection = DB.getConn();
		String sql = "select * from product order by pdate desc limit 0," + count;
		Statement statement = DB.getStat(connection);
		ResultSet resultSet = DB.getRes(statement, sql);
		try {
			while(resultSet.next()) {
				Product p = new Product();
				p.setId(resultSet.getInt("id"));
				p.setName(resultSet.getString("name"));
				p.setDescr(resultSet.getString("descr"));
				p.setNormalPrice(resultSet.getDouble("normalprice"));
				p.setMemberPrice(resultSet.getDouble("memberprice"));
				p.setPdate(resultSet.getTimestamp("pdate"));
				p.setCategoryId(resultSet.getInt("categoryid"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}















