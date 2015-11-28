<%@page import="com.gao.www.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ include file="_sessioncheck.jsp" %>
<%
	String idString = request.getParameter("id");
	String pidString = request.getParameter("pid");
	int id = 0;
	int pid = 0;
	if(idString != null && !idString.trim().equals("") && 
			pidString != null && !pidString.trim().equals("")) {
		id = Integer.parseInt(idString);
		pid = Integer.parseInt(pidString);
	}
	Category.deleteCategory(id, pid);
	response.sendRedirect("categorylist.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>

</body>
</html>