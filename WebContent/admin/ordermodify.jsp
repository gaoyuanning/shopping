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
<form action="ordermodify.jsp" method="post" name="form">
	<select name="status">
		<option value="0">未处理</option>
		<option value="1">已处理</option>
		<option value="2">废单</option>
	</select>
</form>

<script type="text/javascript">
	for (var option in document.forms("from").status.options) {
		if(option.value == <%=salesOrder.getStatus()%>) {
			document.forms("from").status.selectedIndex = option.index;
		}
	}
</script>

