<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="com.gao.www.*"%>
<%@ include file="_sessioncheck.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>��̨����</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
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
				<li><a class="a_list a_list3">��������</a>
					<div class="menu_list">
						<a href="orderlist.jsp">�������</a> <a href="#">�������</a> <a href="#">�޸�����</a> <a
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
		
</body>
</html>