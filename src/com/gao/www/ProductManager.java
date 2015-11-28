package com.gao.www;

import java.util.Date;
import java.util.List;

import com.gao.www.dao.ProductDAO;
import com.gao.www.dao.ProductMySQLDAO;
import com.sun.xml.internal.org.jvnet.fastinfoset.VocabularyApplicationData;

public class ProductManager {
	
	private ProductDAO productDAO = null;
	private static ProductManager productManager = null;
	
	public static ProductManager getInstance() {
		if(productManager == null) {
			productManager = new ProductManager();
			productManager.setProductDAO(new ProductMySQLDAO());
		}
		
		return productManager;
	}
	
	public ProductDAO getProductDAO() {
		return productDAO;
	}

	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

	public List<Product> getProducts() {
		return this.productDAO.getProducts();
	}
	
	public List<Product> getProducts(int pageNo, int pageSize) {
		return this.productDAO.getProducts(pageNo, pageSize);
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
		return productDAO.findProducts(products, categoryId, keyword, lowNormalPrice, highNormalPrice, lowMemberPrice, highMemberPrice, startDate, endDate, pageNo, pageSize);
	}
	
	public List<Product> findProducts(String name) {
		return null;
	}
	
	public boolean deleteProductByCategoryId(int categoryId) {
		return false;
	}
	
	public boolean deleteProductById(int id) {
		return false;
	}
	
	public boolean updateProduct(Product p) {
		return this.productDAO.updateProduct(p);
	}
	
	public boolean addProduct(Product p) {
		return productDAO.addProduct(p);
	}
	
	public Product loadById(int id) {
		return this.productDAO.loadById(id);
	}

	public List<Product> getLatestProducts(int count) {
		return this.productDAO.getLatestProducts(count);
	}
}












