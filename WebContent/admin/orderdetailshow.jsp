<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="com.gao.www.*"%>
<%@ include file="_sessioncheck.jsp"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	SalesOrder salesOrder = OrderManager.getInstance().loadById(id);
%>
<script type="text/javascript">
	function showInfo(info) {
		document.getElementById("descr").innerHTML = "<font color='red'>" + info + "</font>";
	}
</script>
<center>您的订单：</center>
<table border="1" align="center">
	<tr>
		<th>商品名称</th>
		<th>商品价格</th>
		<th>商品数量</th>
	</tr>
	<%
		List<SalesItem> salesItems = salesOrder.getSalesItems();
		for (int i = 0; i < salesItems.size(); i++) {
			SalesItem salesItem = salesItems.get(i);
	%>
	<tr>
		<th onmouseover="showInfo('<%=salesItem.getProduct().getDescr()%>')"><%=salesItem.getProduct().getName()%></th>
		<th><%=salesItem.getUnitprice()%></th>
		<th><%=salesItem.getPcount()%></th>
	</tr>
	<%
		}
	%>
</table></tr>
<div border=5 color="blue" id="descr"></div>


