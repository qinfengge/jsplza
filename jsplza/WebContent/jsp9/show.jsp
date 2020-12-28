<%@page import="dao.employee"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
List<employee> list = (List<employee>)request.getAttribute("all");
if(list == null){
	request.getRequestDispatcher("select?opr=load").forward(request, response);
}
%>
	<c:forEach items="${list }" var="l">
		<p>ID：${l.id }</p>
		<p>姓名：${l.name }</p>
		<p>性别：${l.sex }</p>
		<p>工资：${l.salary }</p>
		<p>职位：${l.title }</p>

	</c:forEach>
</body>
</html>