<%@page import="java.util.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.gao.www.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
	
<jsp:useBean id="cart" type="com.gao.www.Cart" scope="session"></jsp:useBean>

<% 
if(cart == null) {
	out.println("购物车为空");
	return;
}

%>

<center>你购买的商品：</center>
<form action="cartupdate.jsp" method="post">
<table border="1" align="center">
  <tr>
    <th>商品ID</th>
    <th>商品名称</th>
    <th>商品价格</th>
    <th>商品数量</th>
  </tr>
  <%
  List<CartItem> cartItems = cart.getItems();
  	for(int i = 0; i < cartItems.size(); i++) {
  		CartItem cartItem = cartItems.get(i);
  %>
  <tr>
    <th><%=cartItem.getProductId() %></th>
    <th><%=ProductManager.getInstance().loadById(cartItem.getProductId()).getName() %></th>
    <th><%=cartItem.getPrice() %></th>
    <th>
    	<input type="text" size=4 name="<%="p" + cartItem.getProductId()%>" value="<%=cartItem.getCount()%>">
    </th>
  </tr>
  <%
  	}
  %>
</table>
<center>
  sumMoney:<%=Math.round(cart.getTotalPrice()*100) / 100.0%>yuan<br>
	<input type="submit" value="修改数量">
  <input type="button" value="确认购买" onclick=document.location.href="confirm.jsp"> 
</center>
</form>

