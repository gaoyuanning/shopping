<%@page import="java.util.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.gao.www.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%
User user = (User)session.getAttribute("user");
if(user == null) {
	out.println("�㻹û�е�¼ ������������򣬰��г���</br>");
	//out.println("<a href=confirmnormalprice.jsp>����</a></br>");
	out.println("<a href=login.jsp>��¼</a>");
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
	
<center>�㹺�����Ʒ��</center>
<table border="1" align="center">
  <tr>
    <th>��ƷID</th>
    <th>��Ʒ����</th>
    <th>��Ʒ�۸�<%=(user==null) ? "�г���" : "��Ա��"%></th>
    <th>��Ʒ����</th>
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
	����,<%=user==null ? "" : user.getUsername() %></br>
	�ͻ���Ϣ:<br/>
	<textarea name="addr"><%=user==null ? "" : user.getAddr()%></textarea></br>
	<input type="submit" value="�µ�">
</form>
</center>





