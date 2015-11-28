<%@page import="java.util.List"%>
<%@page import="com.gao.www.Category"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Category category = Category.loadById(id);
	List<Category> categories = category.getChilds();
	StringBuffer stringBuffer = new StringBuffer();
	for (int i = 0; i < categories.size(); i++) {
		Category c = categories.get(i);
		stringBuffer.append("<category><id>"+ c.getId() +"</id><name>" + c.getName() + "</name></category>");
	}
	
	stringBuffer.insert(0, "<categories>");
	stringBuffer.append("</categories>");
	
	response.setContentType("text/xml");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	response.getWriter().write(stringBuffer.toString());
%>