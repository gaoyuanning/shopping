package com.gao.www.dao;

import java.util.Date;
import java.util.List;

import com.gao.www.Product;

public interface ProductDAO {
	public List<Product> getProducts();
	
	public List<Product> getProducts(int pageNo, int pageSize);
	
	public  int findProducts(List<Product> products, int[] categoryId,
									  String keyword,
									  double lowNormalPrice,
									  double highNormalPrice,
									  double lowMemberPrice,
									  double highMemberPrice,
									  Date startDate,
									  Date endDate,
									  int pageNo,
									  int pageSize);
	public boolean deleteProductByCategoryId(int categoryId);
	
	public boolean deleteProductById(int id);
	
	public boolean updateProduct(Product p);
	
	public boolean addProduct(Product p);

	public Product loadById(int id);

	public List<Product> getLatestProducts(int count);
}
