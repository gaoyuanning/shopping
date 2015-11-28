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
		<td><a href="productdelete.jsp?id=<%=p.getId()%>" target="detail">ɾ��</a>
			&nbsp;&nbsp; <a href="productmodify.jsp?id=<%=p.getId()%>"
			target="detail">�޸�</a></td>
	</tr>
	<%
		}
	%>
</table>
<%if(action != null && action.equals("complexsearch")) {
%>
<center>
	��<%=pageCount%>ҳ &nbsp; <a
		href="productsearch.jsp?action=<%=action%>&keyword=<%=keyword%>&lownormalprice=<%=lowNormalPrice%>&highnormalprice=<%=highNormalPrice%>&lowmemberprice=<%=lowMemberPrice%>&highmemberprice=<%=highMemberPrice%>&startdate=<%=startDateString%>&enddate=<%=endDateString%>&pageno=<%=pageNo - 1%>&categoryid=<%=optionId%>">��һҳ</a>
	&nbsp; <a
		href="productsearch.jsp?action=<%=action%>&keyword=<%=keyword%>&lownormalprice=<%=lowNormalPrice%>&highnormalprice=<%=highNormalPrice%>&lowmemberprice=<%=lowMemberPrice%>&highmemberprice=<%=highMemberPrice%>&startdate=<%=startDateString%>&enddate=<%=endDateString%>&pageno=<%=pageNo + 1%>&categoryid=<%=optionId%>">��һҳ</a>
</center>
<%
}
else if(action != null && action.equals("simplesearch2")){
%>
<center>
	��<%=pageCount%>ҳ &nbsp; <a
		href="productsearch.jsp?action=<%=action%>&keyword=<%=keyword%>&pageno=<%=pageNo - 1%><%=optionId%>">��һҳ</a>
	&nbsp; <a
		href="productsearch.jsp?action=<%=action%>&keyword=<%=keyword%>&pageno=<%=pageNo + 1%><%=optionId%>">��һҳ</a>
</center>
<%
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>��̨����</title>
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
		<span>���˺�̨����ϵͳ</span>
		<div class="nav-topright">
			<p>�ϴε�½ʱ�䣺2015-04-15 22:33:50 ��½IP��192.168.1.1</p>
			<span>���ã�����Ա</span><span>ע��</span>
		</div>
	</div>
	<div class="nav-down">
		<div class="leftmenu1">
			<div class="menu-oc">
				<img src="images/menu-all.png" />
			</div>
			<ul>
				<li><a class="a_list a_list1">�û�����</a>
					<div class="menu_list menu_list_first">
						<a class="lista_irst" href="userlist.jsp">�û��б�</a> <a href="#">��������</a>
						<a href="#">������</a> <a href="#">ϵͳ����</a>
					</div></li>
				<li><a class="a_list a_list2">������</a>
					<div class="menu_list">
						<a href="categoryadd.jsp">������</a> <a href="categorylist.jsp">����б�</a>
						<a href="#">Ȩ�޹���</a> <a href="#">��Ա����</a>
					</div></li>
				<li><a class="a_list a_list3">��Ʒ����</a>
					<div class="menu_list">
						<a href="productlist.jsp">��Ʒ�б�</a> <a href="productadd.jsp">��Ʒ���</a>
						<a href="productsearch.jsp">��Ʒ����</a> <a href="#">ɾ������</a>
					</div></li>
				<li><a class="a_list a_list3">���Ź���</a>
					<div class="menu_list">
						<a href="#">��������</a> <a href="#">�������</a> <a href="#">�޸�����</a> <a
							href="#">ɾ������</a>
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
						<span class="sp1"><i></i>�û�����</span> <a class="j_lista_first"
							href="userlist.jsp">�û��б�</a> <a href="#">��������</a> <a href="#">������</a>
						<a href="#">ϵͳ����</a>
					</div></li>
				<li><a class="j_a_list j_a_list2"></a>
					<div class="j_menu_list">
						<span class="sp2"><i></i>������</span> <a href="categoryadd.jsp">������</a>
						<a href="categorylist.jsp">����б�</a> <a href="#">Ȩ�޹���</a> <a
							href="#">��Ա����</a>
					</div></li>
				<li><a class="j_a_list j_a_list3"></a>
					<div class="j_menu_list">
						<span class="sp3"><i></i>��Ʒ����</span> <a href="productlist.jsp">��Ʒ�б�</a>
						<a href="productadd.jsp">��Ʒ���</a> <a href="productsearch.jsp">��Ʒ����</a>
						<a href="#">��Ա����</a>
					</div></li>
			</ul>

		</div>
		<div>&nbsp��</div>
		<div>&nbsp��</div>
		<div>&nbsp��</div>
		<div class="rightcon">
			<div class="right_con">
				<center>������</center>
				<center>
					<form action="productsearch.jsp" method="post">
						<input type="hidden" name="action" value="simplesearch" /> �ؼ���: <input
							type="text" name="keyword" />&nbsp; ���:
						<%
							List<Category> categories = Category.getCategories();
						%>
						<select name="categoryid">
							<option value="0">�������</option>
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
						</select> <input type="submit" value="����" />
					</form>
					<br />
				</center>

				<center>������2</center>
				<center>
					<form action="productsearch.jsp" method="post">
						<input type="hidden" name="action" value="simplesearch2" /> �ؼ���: <input
							type="text" name="keyword" />&nbsp;<br/> ���: <br/>
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
						<input type="submit" value="����" />
					</form>
					<br />
				</center>

				<center>��������</center>
				<center>
					<form action="productsearch.jsp" method="post" name="complex"
						onsubmit="check()">
						<input type="hidden" name="action" value="complexsearch" /> �ؼ���:
						<input type="text" name="keyword" /> &nbsp; ���: <select
							name="categoryid">
							<option value="0">�������</option>
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
						</select> <input type="submit" value="����" /><br /> �����ͨ�۸�: <input
							type="text" name="lownormalprice" /><br /> �����ͨ�۸�: <input
							type="text" name="highnormalprice" /><br /> ��ͻ�Ա�۸�: <input
							type="text" name="lowmemberprice" /><br /> ��߻�Ա�۸�: <input
							type="text" name="highmemberprice" /><br /> ��ʼ���ڣ� <input
							type="text" name="startdate" /><br /> �������ڣ� <input type="text"
							name="enddate" />
					</form>
				</center>
			</div>
		</div>
	</div>
</body>
</html>