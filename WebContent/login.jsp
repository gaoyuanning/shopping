<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="com.gao.www.*" %>
<%
	String action = request.getParameter("action");
	User user = null;
	if(action != null && action.equals("post")) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			user = User.validate(username, password);
		} catch (UserNotFoundException e) {
			out.println("User Not Found");
			return;
		} catch (PasswordNotCorrectException e) {
			out.println("Password Not Correct");
			return;
		}
		
		session.setAttribute("user", user);
		response.sendRedirect("selfservice.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<form action="login.jsp" method="post">
	<input type="hidden" name="action" value="post">
	用户名:<input type="text" name="username"/><br/>
	密码: <input type="password" name="password"/><br/>
	<input type="submit" value="提交"> 
</form>
</body>
</html>