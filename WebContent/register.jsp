<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ page import="com.gao.www.*"%>
<%
	response.setCharacterEncoding("GBK");
	String userString = request.getParameter("register");
	if (userString != null && userString.trim().equals("register")) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		User user = new User();
		user.setAddr(addr);
		user.setPassword(password);
		user.setPhone(phone);
		user.setUsername(username);
		user.setRdate(new Date(System.currentTimeMillis()));
		user.save();
		out.println("ע��ɹ���");
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
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
 var req;
 function validate() {
	var idField = document.getElementById("userid");
	var url = "validate.jsp?id=" + escape(idField.value);
	if(window.XMLHttpRequest) {
		req = new XMLHttpRequest();
	} else if(window.ActiveXObject) {
		req = new ActiveXObject("Microsoft.XMLHTTP");
	}
	req.open("GET", url, true);
	req.onreadystatechange = callback;
	req.send(null);	
}
 
 function callback() {
	if(req.readyState == 4) {
		if(req.status == 200) {
			//alert(req.responseText);
			var msg = req.responseXML.getElementsByTagName("msg")[0];
			setMsg(msg.childNodes[0].nodeValue);
		}
	}
}
 
 function setMsg(msg) {
	if(msg == "invalidate") {
		document.getElementById("usernameSpan").innerHTML = "<font color='red'>���û����ѱ�ע��</font>";
	}
}
</script>
	<form name="form" method="post" onSubmit="return checkdata()"
		action="register.jsp">
		<input type="hidden" name="register" value="register">
		<table border="1" width="500">
			<col width="40%">
			<col align="left">
			<tr>
				<th colspan="2">�û�ע��</th>
			</tr>
			<tr>
				<th>�û�����</th>
				<th><input type="text" name="username" onblur="validate()"
					id="userid"> <span id="usernameSpan"></span></th>
			</tr>
			<tr>
				<th>���룺</th>
				<th><input type="password" name="password"></th>
			</tr>
			<tr>
				<th>����ȷ�ϣ�</th>
				<th><input type="password" name="password2"></th>
			</tr>
			<tr>
				<th>�绰��</th>
				<th><input type="text" name="phone"></th>
			</tr>
			<tr>
				<th>��ַ��</th>
				<th><textarea rows="10" cols="80" name="addr"></textarea></th>
			</tr>
			<tr>
				<th></th>
				<th><input type="submit" value="ע��"> <input
					type="reset" value="����"></th>
			</tr>
		</table>
	</form>
</body>
</html>



