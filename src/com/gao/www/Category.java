package com.gao.www;

import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;

public class Category {
	private int id;
	private int pid;
	private String name;
	private String descr;
	private boolean isleaf;
	private int grade;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public boolean isIsleaf() {
		return isleaf;
	}
	public void setIsleaf(boolean isleaf) {
		this.isleaf = isleaf;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	public static void add(Category c) {
		CategoryDAO.save(c);
	}
	
	public static void add(String name, String descr) {
		Category c = new Category();
		c.setId(-1);
		c.setPid(0);
		c.setName(name);
		c.setDescr(descr);
		c.setIsleaf(true);
		c.setGrade(1);
		add(c);
	}
	
	public static void addChildCategory(String name, String descr, int pid) {
		CategoryDAO.addChildCategory(name, descr, pid);
	}
	
	public static List<Category> getCategories() {
		List<Category> categories = new ArrayList<Category>();
		CategoryDAO.getCategories(categories, 0);
		return categories;
	}
	
	public static void deleteCategory(int id, int pid) {
		CategoryDAO.deleteCategory(id, pid);
	}
	
	public static Category loadById(int id) {
		return CategoryDAO.loadById(id);
	}
	
	public List<Category> getChilds() {
		return CategoryDAO.getChilds(this.id);
	}
}













