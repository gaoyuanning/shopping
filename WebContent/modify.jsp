<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ page import="com.gao.www.*" %>
<%
	User user = (User)session.getAttribute("user");
	if(user == null) {
		response.sendRedirect("login.jsp");
	}
%>
<%
	response.setCharacterEncoding("GB18030");
	String userString = request.getParameter("action");
	if (userString != null && userString.trim().equals("modify")) {
		String username = request.getParameter("username");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		user.setAddr(addr);
		user.setPhone(phone);
		user.setUsername(username);
		user.update();
		out.println("�޸ĳɹ���");
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��Աע��</title>
<script language="JavaScript" src="script/regcheckdata.js"></script>
</head>
<body>
	<script type="text/javascript">
 function checkUN(name) {
	 //checkUserName(name);
	 if(name.length < 3 || name.length > 18) {
		document.getElementById("usernameSpan").innerHTML = "<font color='red'>�û�������Ϊ3-18λ</font>";
		form.username.focus();
		return false;
	} 
	 
	if(isWhiteSpace(form.username.value.toLowerCase())) {
		document.getElementById("usernameSpan").innerHTML = "<font color='red'>�û������ܺ��пո�</font>";
		form.username.focus();
		return false;
	}
	
	if(!isFormatName(form.username.value.toLowerCase())) {
		document.getElementById("usernameSpan").innerHTML = "<font color='red'>�û�����ʽ����ȷ</font>";
		form.username.focus();
		return false;
	}
	
	document.getElementById("usernameSpan").innerHTML = "<font color='red'></font>";
} 
</script>
	<form name="form" method="post" onSubmit="return checkdata()"
		action="modify.jsp">
		<input type="hidden" name="action" value="modify">
		<table border="1" width="500">
			<col width="40%">
			<col align="left">
			<tr>
				<th colspan="2">�û���Ϣ�޸�</th>
			</tr>
			<tr>
				<th>�û�����</th>
				<th><input type="text" name="username"
					onblur="checkUN(this.value.toLowerCase())" value="<%= user.getUsername()%>"> <span
					id="usernameSpan"></span></th>
			</tr>
			<!--  
			<tr>
				<th>���룺</th>
				<th><input type="password" name="password"></th>
			</tr>
			<tr>
				<th>����ȷ�ϣ�</th>
				<th><input type="password" name="password2"></th>
			</tr>
			-->
			<tr>
				<th>�绰��</th>
				<th><input type="text" name="phone" value="<%= user.getPhone()%>"></th>
			</tr>
			<tr>
				<th>��ַ��</th>
				<th><textarea rows="10" cols="80" name="addr"><%= user.getAddr()%></textarea></th>
			</tr>
			<tr>
				<th></th>
				<th><input type="submit" value="�ύ"> <input
					type="reset" value="����"></th>
			</tr>
		</table>
	</form>
</body>
</html>



