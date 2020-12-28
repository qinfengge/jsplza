<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="computer"%>
<%@ page import="java.lang.Integer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String se = request.getParameter("se");
	System.out.print(se);
%>
<computer:Computer se="<%=se %>" num2="<%=num2 %>" num1="<%=num1 %>"></computer:Computer>
<h3>运算结果为</h3>
<%-- <% 
int v = Integer.parseInt(va);
%> --%>
<%=va %>
</body>
</html>