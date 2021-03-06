<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="com.gao.www.*" %>
<%@ include file="_sessioncheck.jsp" %>
<%
	List<Category> categories = Category.getCategories();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>用户列表</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>

<body>
<div class="nav-top">
	<span>个人后台管理系统</span>
    <div class="nav-topright">
    	<p>上次登陆时间：2015-04-15 22:33:50   登陆IP：192.168.1.1</p>
        <span>您好：管理员</span><span>注销</span>
    </div>
</div>
<div class="nav-down">
	<div class="leftmenu1">
        <div class="menu-oc"><img src="images/menu-all.png" /></div>
    	<ul>
        	<li>
            	<a class="a_list a_list1">用户管理</a>
                <div class="menu_list menu_list_first">
                	<a class="lista_first" href="#">用户列表</a>
                    <a href="#">其他设置</a>
                    <a href="#">界面风格</a>
                    <a href="#">系统工具</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list2">权限管理</a>
                <div class="menu_list">
                	<a href="#">基本权限</a>
                    <a href="#">分配权限</a>
                    <a href="#">权限管理</a>
                    <a href="#">成员管理</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">新闻管理</a>
                <div class="menu_list">
                	<a href="#">新闻中心</a>
                    <a href="#">添加新闻</a>
                    <a href="#">修改新闻</a>
                    <a href="#">删除新闻</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">新闻管理</a>
                <div class="menu_list">
                	<a href="#">新闻中心</a>
                    <a href="#">添加新闻</a>
                    <a href="#">修改新闻</a>
                    <a href="#">删除新闻</a>
                </div>
            </li>
        </ul>
    </div>
    <div class="leftmenu2">
    	<div class="menu-oc1"><img src="images/menu-all.png" /></div>
        <ul>
        	<li>
            	<a class="j_a_list j_a_list1"></a>
                <div class="j_menu_list j_menu_list_first">
                	<span class="sp1"><i></i>用户管理</span>
                	<a class="j_lista_first" href="#">用户列表</a>
                    <a href="#">其他设置</a>
                    <a href="#">界面风格</a>
                    <a href="#">系统工具</a>
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list2"></a>
                <div class="j_menu_list">
                	<span class="sp2"><i></i>权限管理</span>
                	<a href="#">基本权限</a>
                    <a href="#">分配权限</a>
                    <a href="#">权限管理</a>
                    <a href="#">成员管理</a>
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list3"></a>
                <div class="j_menu_list">
                	<span class="sp3"><i></i>权限管理</span>
                	<a href="#">基本权限</a>
                    <a href="#">分配权限</a>
                    <a href="#">权限管理</a>
                    <a href="#">成员管理</a>
                </div>
            </li>
        </ul>
        
    </div>
		<div>&nbsp；</div>
		<div>&nbsp；</div>
		<div>&nbsp；</div>
    <div class="rightcon">
    	<div class="right_con">
        	<table border="1">
  <tr>
    <th>ID</th>
    <th>PID</th>
    <th>名称</th>
    <th>isLeaf</th>
    <th>管理</th>
    <th>管理</th>
  </tr>
  <%
  	for(int i = 0; i < categories.size(); i++) {
  		Category category = categories.get(i);
  		String preString = "";
  		for(int j = 1; j < category.getGrade(); j++) {
  			preString += "----";
  		}
  		
  %>
  <tr>
    <td><%= category.getId() %></td>
    <td><%= category.getPid()%></td>
    <td><%= preString + category.getName() %></td>
    <td><%= category.isIsleaf() %></td>
    <td>
    <a href="categoryadd.jsp?pid=<%= category.getId() %>">添加子类别</a>&nbsp;
    <%if(category.isIsleaf()) {%>
    <a href="productadd.jsp?categoryid=<%=category.getId() %>">在该类别下添加商品</a>
    <%} %>
    <td><a href="categorydelete.jsp?id=<%= category.getId()%>&pid=<%=category.getPid() %>">删除</a></td>
  </tr>
<%
  	}
%>
</table>

        </div>
    </div>
</div>

</body>
</html>