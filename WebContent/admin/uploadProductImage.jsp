<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>�ļ��ϴ�</title>
  </head>
  
  <body>
    <form action="${pageContext.request.contextPath}/servlet/UploadHandleServlet" enctype="multipart/form-data" method="post">
    <input type="hidden" name="id" value=<%=id %>>
        �ϴ��û���<input type="text" name="username"><br/>
        �ϴ��ļ�1��<input type="file" name="file1"><br/>
        �ϴ��ļ�2��<input type="file" name="file2"><br/>
        <input type="submit" value="�ύ">
    </form>
  </body>
</html>