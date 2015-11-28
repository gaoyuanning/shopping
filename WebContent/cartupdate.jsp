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

List<CartItem> cartItems = cart.getItems();
for(int i = 0; i < cartItems.size(); i++) {
  CartItem cartItem = cartItems.get(i);
	String idString = request.getParameter("p" + cartItem.getProductId());
	if(idString != null) {
		cartItem.setCount(Integer.parseInt(idString));
	}
}

%>
<center>success!</center>
<div id="num">
  
</div>
<script type="text/javascript">
  var leftTime = 3000;
  function go() {
    document.getElementById("num").innerText = leftTime / 1000 + "秒后返回";
    leftTime -= 1000;
    if(leftTime == 0) {
       document.location.href="cart.jsp";
    }
  }

  setInterval(go, 1000);
</script>