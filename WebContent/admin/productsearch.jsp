<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="com.gao.www.*"%>
<%@ include file="_sessioncheck.jsp"%>
<% 
	String action = request.getParameter("action");
	int pageNo = 1;
	String pageNoString = request.getParameter("pageno");
	int[] categoryId = null;
	String optionId = null;
	String keyword = null;
	double lowNormalPrice = -1;
	double highNormalPrice = -1;
	double lowMemberPrice = -1;
	double highMemberPrice = -1;
	String startDateString = null;
	Timestamp startDate = null;
	String endDateString = null;
	Timestamp endDate = null;
	List<Product> products = new ArrayList<Product>();
	int pageCount = 0;
%>
<%
	if (action != null && action.trim().equals("complexsearch")) {
		pageNo = 1;
		pageNoString = request.getParameter("pageno");
		if (pageNoString != null && !pageNoString.trim().equals("")) {
			pageNo = Integer.parseInt(pageNoString);
			if (pageNo < 1) {
				pageNo = 1;
			}
		}

		optionId = request.getParameter("categoryid");
		if (optionId != null) {
			categoryId = new int[1];
			categoryId[0] = Integer.parseInt(optionId);
		} else {
			categoryId = null;
		}
		keyword = request.getParameter("keyword");
		lowNormalPrice = Double.parseDouble(request.getParameter("lownormalprice"));
		highNormalPrice = Double.parseDouble(request.getParameter("highnormalprice"));
		lowMemberPrice = Double.parseDouble(request.getParameter("lowmemberprice"));
		highMemberPrice = Double.parseDouble(request.getParameter("highmemberprice"));
		startDateString = request.getParameter("startdate");

		if (startDateString != null && !startDateString.trim().equals("")) {
			startDate = Timestamp.valueOf(request.getParameter("startdate"));
		} else {
			startDate = null;
		}
		endDateString = request.getParameter("enddate");
		if (endDateString != null && !endDateString.trim().equals("")) {
			endDate = Timestamp.valueOf(request.getParameter("enddate"));
		} else {
			endDate = null;
		}

		pageCount = ProductManager.getInstance().findProducts(products, categoryId, keyword, lowNormalPrice,
				highNormalPrice, lowMemberPrice, highMemberPrice, startDate, endDate, pageNo, 3);
	}
%>

<%
	if (action != null && action.trim().equals("simplesearch2")) {
		pageNo = 1;
		pageNoString = request.getParameter("pageno");
		if (pageNoString != null && !pageNoString.trim().equals("")) {
			pageNo = Integer.parseInt(pageNoString);
			if (pageNo < 1) {
				pageNo = 1;
			}
		}
		keyword = request.getParameter("keyword");
		categoryId = null;
		String[] categoryidStrings = request.getParameterValues("categoryid");
		optionId = "";
		if(categoryidStrings != null && categoryidStrings.length > 0) {
			categoryId = new int[categoryidStrings.length];
			for(int i = 0; i < categoryidStrings.length; i++) {
				categoryId[i] = Integer.parseInt(categoryidStrings[i]);
				optionId += "&categoryid=" + categoryId[i];
			}
		}
		pageCount = ProductManager.getInstance().findProducts(products, categoryId, keyword, lowNormalPrice,
				highNormalPrice, lowMemberPrice, highMemberPrice, startDate, endDate, pageNo, 3);
	}
%>

<table border="1">
	<tr>
		<th>ID</th>
		<th>name</th>
		<th>desc</th>
		<th>normalprice</th>
		<th>memberprice</th>
		<th>pdate</th>
		<th>categoryid</th>
	</tr>
	<%
		for (int i = 0; i < products.size(); i++) {
				Product p = products.get(i);
	%>
	<tr>
		<td><%=p.getId()%></td>
		<td><%=p.getName()%></td>
		<td><%=p.getDescr()%></td>
		<td><%=p.getNormalPrice()%></td>
		<td><%=p.getMemberPrice()%></td>
		<td><%=p.getPdate()%></td>
		<td><%=p.getCategoryId()%></td>
		<td><a href="productdelete.jsp?id=<%=p.getId()%>" target="detail">删除</a>
			&nbsp;&nbsp; <a href="productmodify.jsp?id=<%=p.getId()%>"
			target="detail">修改</a></td>
	</tr>
	<%
		}
	%>
</table>
<%if(action != null && action.equals("complexsearch")) {
%>
<center>
	共<%=pageCount%>页 &nbsp; <a
		href="productsearch.jsp?action=<%=action%>&keyword=<%=keyword%>&lownormalprice=<%=lowNormalPrice%>&highnormalprice=<%=highNormalPrice%>&lowmemberprice=<%=lowMemberPrice%>&highmemberprice=<%=highMemberPrice%>&startdate=<%=startDateString%>&enddate=<%=endDateString%>&pageno=<%=pageNo - 1%>&categoryid=<%=optionId%>">上一页</a>
	&nbsp; <a
		href="productsearch.jsp?action=<%=action%>&keyword=<%=keyword%>&lownormalprice=<%=lowNormalPrice%>&highnormalprice=<%=highNormalPrice%>&lowmemberprice=<%=lowMemberPrice%>&highmemberprice=<%=highMemberPrice%>&startdate=<%=startDateString%>&enddate=<%=endDateString%>&pageno=<%=pageNo + 1%>&categoryid=<%=optionId%>">下一页</a>
</center>
<%
}
else if(action != null && action.equals("simplesearch2")){
%>
<center>
	共<%=pageCount%>页 &nbsp; <a
		href="productsearch.jsp?action=<%=action%>&keyword=<%=keyword%>&pageno=<%=pageNo - 1%><%=optionId%>">上一页</a>
	&nbsp; <a
		href="productsearch.jsp?action=<%=action%>&keyword=<%=keyword%>&pageno=<%=pageNo + 1%><%=optionId%>">下一页</a>
</center>
<%
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript">
	function check() {
		with (document.forms["complex"]) {
			if (lownormalprice.value == null || lownormalprice.value == "") {
				lownormalprice.value = -1
			}

			if (highnormalprice.value == null || highnormalprice.value == "") {
				highnormalprice.value = -1
			}

			if (lowmemberprice.value == null || lowmemberprice.value == "") {
				lowmemberprice.value = -1
			}

			if (highmemberprice.value == null || highmemberprice.value == "") {
				highmemberprice.value = -1
			}
		}
	}
</script>
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
				<li><a class="a_list a_list3">新闻管理</a>
					<div class="menu_list">
						<a href="#">新闻中心</a> <a href="#">添加新闻</a> <a href="#">修改新闻</a> <a
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
				<center>简单搜索</center>
				<center>
					<form action="productsearch.jsp" method="post">
						<input type="hidden" name="action" value="simplesearch" /> 关键字: <input
							type="text" name="keyword" />&nbsp; 类别:
						<%
							List<Category> categories = Category.getCategories();
						%>
						<select name="categoryid">
							<option value="0">所有类别</option>
							<%
								for (int i = 0; i < categories.size(); i++) {
									Category category = categories.get(i);
									String prefix = "";
									for (int j = 0; j < category.getGrade(); j++)
										prefix += "--";
							%>
							<option value="<%=category.getId()%>"><%=prefix += category.getName()%></option>
							<%
								}
							%>
						</select> <input type="submit" value="搜索" />
					</form>
					<br />
				</center>

				<center>简单搜索2</center>
				<center>
					<form action="productsearch.jsp" method="post">
						<input type="hidden" name="action" value="simplesearch2" /> 关键字: <input
							type="text" name="keyword" />&nbsp;<br/> 类别: <br/>
							<%
								for (int i = 0; i < categories.size(); i++) {
									Category category = categories.get(i);
							%>
							<% if(category.isIsleaf()) {
							%>
						<input type="checkbox" name="categoryid" value="<%=category.getId() %>"/><%=category.getName() %><br/>
						
						<% 
							}
							else {
						%>
							<%=category.getName() %><br/>	
						<% 
							}
						}
						%>
						<input type="submit" value="搜索" />
					</form>
					<br />
				</center>

				<center>复杂搜索</center>
				<center>
					<form action="productsearch.jsp" method="post" name="complex"
						onsubmit="check()">
						<input type="hidden" name="action" value="complexsearch" /> 关键字:
						<input type="text" name="keyword" /> &nbsp; 类别: <select
							name="categoryid">
							<option value="0">所有类别</option>
							<%
								for (int i = 0; i < categories.size(); i++) {
									Category category = categories.get(i);
									String prefix = "";
									for (int j = 0; j < category.getGrade(); j++)
										prefix += "--";
							%>
							<option value="<%=category.getId()%>"><%=prefix += category.getName()%></option>
							<%
								}
							%>
						</select> <input type="submit" value="搜索" /><br /> 最低普通价格: <input
							type="text" name="lownormalprice" /><br /> 最高普通价格: <input
							type="text" name="highnormalprice" /><br /> 最低会员价格: <input
							type="text" name="lowmemberprice" /><br /> 最高会员价格: <input
							type="text" name="highmemberprice" /><br /> 开始日期： <input
							type="text" name="startdate" /><br /> 结束日期： <input type="text"
							name="enddate" />
					</form>
				</center>
			</div>
		</div>
	</div>
</body>
</html>