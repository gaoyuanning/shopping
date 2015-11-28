<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="com.gao.www.*"%>
<%@ include file="_sessioncheck.jsp"%>
<%!private static int PAGE_SIZE = 3;%>
<%
	String pageNoString = request.getParameter("pageno");
	int pageNo = 1;
	if (pageNoString != null) {
		pageNo = Integer.parseInt(pageNoString);
	}
	if (pageNo < 1) {
		pageNo = 1;
	}
	List<SalesOrder> salesOrders = OrderManager.getInstance().getOrders(pageNo, PAGE_SIZE);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>

<body>
	<div class="nav-top">
		<span>个人后台管理系统</span>
		<div class="nav-topright">
			<p>上次登陆时间：2015-04-15 22:33:50 登陆IP：192.168.1.1</p>
			<span>您好：管理员</span><span>注销</span>
		</div>
	</div>
	<div class="nav-down">
		<div class="leftmenu1">
			<div class="menu-oc">
				<img src="images/menu-all.png" />
			</div>
			<ul>
				<li><a class="a_list a_list1">用户管理</a>
					<div class="menu_list menu_list_first">
						<a class="lista_irst" href="userlist.jsp">用户列表</a> <a href="#">其他设置</a>
						<a href="#">界面风格</a> <a href="#">系统工具</a>
					</div></li>
				<li><a class="a_list a_list2">类别管理</a>
					<div class="menu_list">
						<a href="categoryadd.jsp">添加类别</a> <a href="categorylist.jsp">类别列表</a>
						<a href="#">权限管理</a> <a href="#">成员管理</a>
					</div></li>
				<li><a class="a_list a_list3">产品管理</a>
					<div class="menu_list">
						<a href="productlist.jsp">产品列表</a> <a href="productadd.jsp">产品添加</a>
						<a href="productsearch.jsp">产品搜索</a> <a href="#">删除新闻</a>
					</div></li>
				<li><a class="a_list a_list3">订单管理</a>
					<div class="menu_list">
						<a href="orderlist.jsp">订单浏览</a> <a href="#">添加新闻</a> <a href="#">修改新闻</a> <a
							href="#">删除新闻</a>
					</div></li>
			</ul>
		</div>
		<div class="leftmenu2">
			<div class="menu-oc1">
				<img src="images/menu-all.png" />
			</div>
			<ul>
				<li><a class="j_a_list j_a_list1"></a>
					<div class="j_menu_list j_menu_list_first">
						<span class="sp1"><i></i>用户管理</span> <a class="j_lista_first"
							href="userlist.jsp">用户列表</a> <a href="#">其他设置</a> <a href="#">界面风格</a>
						<a href="#">系统工具</a>
					</div></li>
				<li><a class="j_a_list j_a_list2"></a>
					<div class="j_menu_list">
						<span class="sp2"><i></i>类别管理</span> <a href="categoryadd.jsp">添加类别</a>
						<a href="categorylist.jsp">类别列表</a> <a href="#">权限管理</a> <a
							href="#">成员管理</a>
					</div></li>
				<li><a class="j_a_list j_a_list3"></a>
					<div class="j_menu_list">
						<span class="sp3"><i></i>产品管理</span> <a href="productlist.jsp">产品列表</a>
						<a href="productadd.jsp">产品添加</a> <a href="productsearch.jsp">产品搜索</a>
						<a href="#">成员管理</a>
					</div></li>
			</ul>

		</div>
		<div>&nbsp；</div>
		<div>&nbsp；</div>
		<div>&nbsp；</div>
		<div class="rightcon">
			<div class="right_con">
			<center>
				<table border="1">
					<tr>
						<th>ID</th>
						<th>username</th>
						<th>addr</th>
						<th>odate</th>
						<th>status</th>
					</tr>
					<%
						for (int i = 0; i < salesOrders.size(); i++) {
							SalesOrder salesOrder = salesOrders.get(i);
					%>
					<tr>
						<td><%=salesOrder.getId()%></td>
						<td><%=salesOrder.getUser().getUsername() %></td>
						<td><%=salesOrder.getAddr()%></td>
						<td><%=salesOrder.getOdate()%></td>
						<td><%=salesOrder.getStatus()%></td>
						<td>
						<a href="orderdetailshow.jsp?id=<%=salesOrder.getId()%>" target="detail">明细</a>
						</td>
						<td>
						<a href="ordermodify.jsp?id=<%=salesOrder.getId()%>" target="detail">订单修改</a>
						</td>
					</tr>
					<%
						}
					%>
				</table>
				</center>
			</div>
		</div>
	</div>
	<center>
		第<%=pageNo%>页 &nbsp; <a
			href="productlist.jsp?pageno=<%=pageNo - 1%>">上一页</a> &nbsp; <a
			href="productlist.jsp?pageno=<%=pageNo + 1%>">下一页</a>
	</center>
</body>
</html>