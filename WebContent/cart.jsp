<%@page import="java.util.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.gao.www.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
	
<jsp:useBean id="cart" type="com.gao.www.Cart" scope="session"></jsp:useBean>

<% 
if(cart == null) {
	out.println("���ﳵΪ��");
	return;
}

%>

<center>�㹺�����Ʒ��</center>
<form action="cartupdate.jsp" method="post">
<table border="1" align="center">
  <tr>
    <th>��ƷID</th>
    <th>��Ʒ����</th>
    <th>��Ʒ�۸�</th>
    <th>��Ʒ����</th>
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
	<input type="submit" value="�޸�����">
  <input type="button" value="ȷ�Ϲ���" onclick=document.location.href="confirm.jsp"> 
</center>
</form>

