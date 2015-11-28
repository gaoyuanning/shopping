<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="com.gao.www.*" %>
<%@ include file="_sessioncheck.jsp" %>
<%
	List<User> users = User.getAllUsers();
	String idString = request.getParameter("id");
	if(idString != null && !idString.trim().equals("")) {
		int id = Integer.parseInt(idString);
		User.deleteUser(id);
		response.sendRedirect("userlist.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>�û��б�</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>

<body>
<div class="nav-top">
	<span>���˺�̨����ϵͳ</span>
    <div class="nav-topright">
    	<p>�ϴε�½ʱ�䣺2015-04-15 22:33:50   ��½IP��192.168.1.1</p>
        <span>���ã�����Ա</span><span>ע��</span>
    </div>
</div>
<div class="nav-down">
	<div class="leftmenu1">
        <div class="menu-oc"><img src="images/menu-all.png" /></div>
    	<ul>
        	<li>
            	<a class="a_list a_list1">�û�����</a>
                <div class="menu_list menu_list_first">
                	<a class="lista_first" href="#">�û��б�</a>
                    <a href="#">��������</a>
                    <a href="#">������</a>
                    <a href="#">ϵͳ����</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list2">Ȩ�޹���</a>
                <div class="menu_list">
                	<a href="#">����Ȩ��</a>
                    <a href="#">����Ȩ��</a>
                    <a href="#">Ȩ�޹���</a>
                    <a href="#">��Ա����</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">���Ź���</a>
                <div class="menu_list">
                	<a href="#">��������</a>
                    <a href="#">�������</a>
                    <a href="#">�޸�����</a>
                    <a href="#">ɾ������</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">���Ź���</a>
                <div class="menu_list">
                	<a href="#">��������</a>
                    <a href="#">�������</a>
                    <a href="#">�޸�����</a>
                    <a href="#">ɾ������</a>
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
                	<span class="sp1"><i></i>�û�����</span>
                	<a class="j_lista_first" href="#">�û��б�</a>
                    <a href="#">��������</a>
                    <a href="#">������</a>
                    <a href="#">ϵͳ����</a>
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list2"></a>
                <div class="j_menu_list">
                	<span class="sp2"><i></i>Ȩ�޹���</span>
                	<a href="#">����Ȩ��</a>
                    <a href="#">����Ȩ��</a>
                    <a href="#">Ȩ�޹���</a>
                    <a href="#">��Ա����</a>
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list3"></a>
                <div class="j_menu_list">
                	<span class="sp3"><i></i>Ȩ�޹���</span>
                	<a href="#">����Ȩ��</a>
                    <a href="#">����Ȩ��</a>
                    <a href="#">Ȩ�޹���</a>
                    <a href="#">��Ա����</a>
                </div>
            </li>
        </ul>
        
    </div>
		<div>&nbsp��</div>
		<div>&nbsp��</div>
		<div>&nbsp��</div>
    <div class="rightcon">
    	<div class="right_con">
        	<table border="1">
  <tr>
    <th>ID</th>
    <th>�û���</th>
    <th>�绰</th>
    <th>��ַ</th>
    <th>ע��ʱ��</th>
    <th>�û�����</th>
  </tr>
  <%
  	for(int i = 0; i < users.size(); i++) {
  		User u = users.get(i);
  %>
  <tr>
    <td><%= u.getId() %></td>
    <td><%= u.getUsername() %></td>
    <td><%= u.getPhone() %></td>
    <td><%= u.getAddr() %></td>
    <td><%= u.getRdate() %></td>
    <td><a href="userlist.jsp?id=<%= u.getId()%>">ɾ</a></td>
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