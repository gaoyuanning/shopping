<%@page import="com.gao.www.Category"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ include file="_sessioncheck.jsp"%>
<%
	String pidString = request.getParameter("pid");
	int pid = 0;
	if(pidString != null && !pidString.trim().equals("")) {
		pid = Integer.parseInt(pidString);
	}
%>
<%
	response.setCharacterEncoding("GB18030");
	String action = request.getParameter("action");
	if(action != null && action.trim().equals("add")) {
		String name = request.getParameter("name");
		String descr = request.getParameter("descr");
		if (pid == 0) {
			Category.add(name, descr);
			response.sendRedirect("index.jsp");
		} else {
			Category.addChildCategory(name, descr, pid);
			response.sendRedirect("categorylist.jsp");
		}
	
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<center>
		添加类别<br />
		<form action="categoryadd.jsp" method="post">
			<input type="hidden" name="action" value="add">
			<input type="hidden" name="pid" value=<%=pid %>>
			<table border="1">
				<tr>
					<td>类别名称：</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>类别描述：</td>
					<td><textarea rows="8" cols="30" name="descr"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="提交"></td>
				</tr>
			</table>
		</form>
	</center>

</body>
</html>