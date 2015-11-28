<%@page import="java.util.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.gao.www.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%
User user = (User)session.getAttribute("user");
if(user == null) {
	out.println("你还没有登录 ，如果继续购买，按市场价</br>");
	//out.println("<a href=confirmnormalprice.jsp>继续</a></br>");
	out.println("<a href=login.jsp>登录</a>");
}
%>

<%
		//check session
		Cart cart = (Cart)session.getAttribute("cart");
		if(cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
	}
%>
	
<center>你购买的商品：</center>
<table border="1" align="center">
  <tr>
    <th>商品ID</th>
    <th>商品名称</th>
    <th>商品价格<%=(user==null) ? "市场价" : "会员价"%></th>
    <th>商品数量</th>
  </tr>
  <%
  List<CartItem> cartItems = cart.getItems();
  	for(int i = 0; i < cartItems.size(); i++) {
  		CartItem cartItem = cartItems.get(i);
  		Product product = ProductManager.getInstance().loadById(cartItem.getProductId());
  %>
  <tr>
    <th><%=cartItem.getProductId() %></th>
    <th><%=product.getName() %></th>
    <th><%=(user==null) ? product.getNormalPrice() : product.getMemberPrice()%></th>
    <th>
    	<%=cartItem.getCount()%>
    </th>
  </tr>
  <%
  	}
  %>
</table>
<center>
  sumMoney:<%=Math.round(cart.getTotalPrice()*100) / 100.0%>yuan<br>
</center>
<center>
<form action="order.jsp" method="post">
	您好,<%=user==null ? "" : user.getUsername() %></br>
	送货信息:<br/>
	<textarea name="addr"><%=user==null ? "" : user.getAddr()%></textarea></br>
	<input type="submit" value="下单">
</form>
</center>





