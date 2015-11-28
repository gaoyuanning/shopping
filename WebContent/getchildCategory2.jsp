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
	
			stringBuffer.append("document.getElementById('c2').options[" + (i+1) + "].text='"
					+ c.getName() + "';\n");
			stringBuffer.append("document.getElementById('c2').options[" + (i+1) + "].value='"
					+ c.getId() + "';\n");
	}

	stringBuffer.insert(0, "document.getElementById('c2').options[0].text='请选择二级目录';\n");
	stringBuffer.insert(0, "document.getElementById('c2').options[0].value='-1';\n");
	stringBuffer.insert(0, "document.getElementById('c2').selectedIndex=0;\n");
	stringBuffer.insert(0, "document.getElementById('c2').options.length=" + (categories.size()+1) + ";\n");
	
	response.setContentType("text/xml");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	response.getWriter().write(stringBuffer.toString());
%>