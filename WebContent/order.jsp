<%@page import="java.util.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.gao.www.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
	
<jsp:useBean id="cart" type="com.gao.www.Cart" scope="session"></jsp:useBean>
<%
User user = (User)session.getAttribute("user");
if(user == null) {
	user = new User();
}
%>
<% 
if(cart == null) {
	out.println("���ﳵΪ��");
	return;
}

%>
<%
System.out.println("order " + cart.getItems().size());
	String addr = request.getParameter("addr");
	SalesOrder salesOrder = new SalesOrder();
	salesOrder.setAddr(addr);
	salesOrder.setCart(cart);
	salesOrder.setOdate(new Timestamp(System.currentTimeMillis()));
	salesOrder.setStatus(0);
	salesOrder.setUser(user);
	salesOrder.save();
	session.removeAttribute("cart");
%>

<center>�µ��ɹ�����ӭ����</center>

