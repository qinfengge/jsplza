<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.employee"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
/* else{
	for(employee e:list){
		out.print(e.getName());
	}
} */
	%>
	
	<c:forEach items="${all }" var="employee">
		<p>ID：${employee.id }</p>
		<p>姓名：${employee.name }</p>
		<p>性别：${employee.sex }</p>
		<p>工资：${employee.salary }</p>
		<p>职位：${employee.title }</p>
	</c:forEach>
</body>
</html>