<%@page import="java.util.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.gao.www.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Product product = ProductManager.getInstance().loadById(id);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<center>添加产品</center>
	<img src="./index_files/3155766-8p55iwipsw-48693930304125051.jpg"
		data-original="http://S0.nuomi.bdimg.com/upload/mfs201508/deal/2015/3/V_L/3155766-8p55iwipsw-48693930304125051.jpg"
		alt="" style="display: inline;"></br>

	<%=product.getName() %></br>
	<%=product.getDescr() %></br>
	<%=product.getPdate() %></br>
	<a href="buy.jsp?id=<%=product.getId()%>">我买了</a>	
</body>
</html>