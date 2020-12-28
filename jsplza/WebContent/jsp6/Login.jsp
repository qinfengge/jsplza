<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>历史图书</title>
</head>

<body>
《梦回大清》¥39.99<a href="Login.jsp?bookname=梦回大清">购买</a><br>
《梦回大唐》¥49.99<a href="Login.jsp?bookname=梦回大唐">购买</a><br>
<%
	
	ArrayList books=(ArrayList)session.getAttribute("books");
	
	if(books==null)
	{
		books=new ArrayList();
		session.setAttribute("books",books);
	}
	String bookname=request.getParameter("bookname");
	if(bookname!=null){
	bookname=new String(bookname.getBytes("ISO-8859-1"),"utf-8"); 
 	books.add(bookname);
 	session.setAttribute("books",books);
	}
	String delete=request.getParameter("delete");
	if(delete!=null){
		int i=Integer.parseInt(delete);
		books.remove(i);
		session.setAttribute("books",books);
	}
%>
购物车中的书有：<br>
<%
		
	for(int i=0;i<books.size();i++)
	{
	%>
		<a href="Login.jsp?delete=<%=i%> ">删除</a>
		
		 <%out.println(books.get(i)+"<br>");}
		%>

</body>
</html>