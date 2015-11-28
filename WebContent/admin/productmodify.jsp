<%@page import="java.util.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.gao.www.*"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ include file="_sessioncheck.jsp"%>
<%
	int id = 0;
    String idString = request.getParameter("id");
	if(idString != null) {
		id = Integer.parseInt(request.getParameter("id"));
	}
	Product product = ProductManager.getInstance().loadById(id);
	
	String modifyString = request.getParameter("action");
	if(modifyString != null) {
		int productid = Integer.parseInt(request.getParameter("productid"));
		String name = request.getParameter("name");
		String descr = request.getParameter("descr");
		double normalPrice = Double.parseDouble(request.getParameter("normalprice"));
		double memberPrice = Double.parseDouble(request.getParameter("memberprice"));
		int categoryId = Integer.parseInt(request.getParameter("categoryid"));
		
		Category category = Category.loadById(categoryId);
		
		Product p = new Product();
		p.setId(productid);
		p.setCategoryId(categoryId);
		p.setDescr(descr);
		p.setMemberPrice(memberPrice);
		p.setName(name);
		p.setNormalPrice(normalPrice);
		p.setCategory(category);
		
		ProductManager.getInstance().updateProduct(p);
		
		response.sendRedirect("productlist.jsp");
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<script type="text/javascript">
	var arrLeaf = new Array();
	function checkdata() {
		if(arrLeaf[document.form.categoryid.selectedId] == "notleaf") {
			alert("不能在非叶子节点下添加商品");
			return false;
		}
		
		return true;
	}
</script>
</head>
<body>
	<center>
		修改产品<br />
		<form action="productmodify.jsp" method="post" name="form" onsubmit="return checkdata()">
			<input type="hidden" name="action" value="modify">
				<input type="hidden" name="productid" value="<%= id%>">
			<table border="1">
				<tr>
					<td>产品名称：</td>
					<td><input type="text" name="name" value="<%=product.getName() %>"></td>
				</tr>
				<tr>
					<td>产品描述：</td>
					<td><textarea rows="8" cols="30" name="descr" value=""><%=product.getDescr() %></textarea></td>
				</tr>
				<tr>
					<td>市场价：</td>
					<td><input type="text" name="normalprice" value="<%=product.getNormalPrice() %>"></td>
				</tr>
				<tr>
					<td>会员价：</td>
					<td><input type="text" name="memberprice" value="<%=product.getMemberPrice() %>"></td>
				</tr>
				<tr>
					<%
						List<Category> categories = Category.getCategories();
					%>
					<td>类别Id：</td>
					<td>
						<select name="categoryid">
							<option value="0">所有类别</option>
							<%
								int index = 1;
								for (int i = 0; i < categories.size(); i++) {
									Category category = categories.get(i);
									String prefix = "";
									for (int j = 0; j < category.getGrade(); j++)
										prefix += "--";
							%>
							<script>
								arrLeaf[<%=index++%>] = <%= category.isIsleaf() ? "leaf" : "notleaf"%>;
							</script>
							<option value="<%=category.getId()%>" <%= product.getCategoryId() == category.getId() ? "selected" : ""%>>><%=prefix += category.getName()%></option>
							<%
								}
							%>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="提交"></td>
				</tr>
			</table>
		</form>
	</center>

</body>
</html>