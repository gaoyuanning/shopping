<%@page import="java.util.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.gao.www.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
	<%
		//check session
		Cart cart = (Cart)session.getAttribute("cart");
		if(cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
	}
	%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Product product = ProductManager.getInstance().loadById(id);
	CartItem cartItem = new CartItem();
	cartItem.setProductId(id);
	cartItem.setPrice(product.getNormalPrice()); // check if logged
	cartItem.setCount(1);
	cart.add(cartItem);

	response.sendRedirect("cart.jsp");
%>