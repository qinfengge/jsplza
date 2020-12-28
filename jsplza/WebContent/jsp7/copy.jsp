<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="copy"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="copy.jsp">
		源文件路径：<input type="text" name="from"><br>
		目标文件路径：<input type="text" name="to"><br>
		<input type="submit" value="走起">
	</form>
<%
request.setCharacterEncoding("utf-8");
String from = request.getParameter("from");
String to = request.getParameter("to");
if (to != null && from != null) {
	
%>
	<copy:copy to="<%=to%>" from="<%=from%>"></copy:copy>
	<h3><%
	if("空".equals(errmsg)){
		out.print("");
	}else{
		out.print(errmsg);
	}
	%></h3>
	<h3><%
	if("空".equals(content)){
		out.print("");
	}else{
		out.print(content);
	}
	%></h3>
<%
}
%>
</body>
</html>