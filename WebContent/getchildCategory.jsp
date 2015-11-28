<%@page import="java.util.List"%>
<%@page import="com.gao.www.Category"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
//System.out.print(id);
	Category category = Category.loadById(id);
	List<Category> childs = category.getChilds();
	StringBuffer stringBuffer = new StringBuffer();
	for(int i = 0; i < childs.size(); i++) {
		Category c = childs.get(i);
		stringBuffer.append(c.getId() + "," + c.getName() + "-");
	}
	if(childs.size() > 0) {
		stringBuffer.deleteCharAt(stringBuffer.length() - 1);
	}
	
	response.setContentType("text/xml");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	response.getWriter().write(stringBuffer.toString());
%>