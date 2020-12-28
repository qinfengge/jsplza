<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table border="1">
			<tr>
				<td>图书名</td>
				<td>作者</td>
				<td>价格</td>
				<td><a>链接</a></td>
			</tr>
			<tr>
				<td>这是一本书</td>
				<td>这是作者</td>
				<td>￥27</td>
				<td><a href="choiceBook.jsp?name=这是一本书&author=这是作者&price=￥27">订购</a></td>
			</tr>
			<tr>
				<td>小王子</td>
				<td>法国</td>
				<td>￥35</td>
				<td><a href="choiceBook.jsp?name=小王子&author=法国&price=￥35">订购</a></td>
			</tr>
			<tr>
				<td>我们仨</td>
				<td>杨绛</td>
				<td>￥20</td>
				<td><a href="choiceBook.jsp?name=我们仨&author=杨绛&price=￥20">订购</a></td>
			</tr>
		</table>
		<%
		ArrayList<String[]> books=(ArrayList)session.getAttribute("books");
		if(books==null)
		{
			books=new ArrayList();
			session.setAttribute("books",books);
		}
		String name = request.getParameter("name");
		String author = request.getParameter("author");
		String price = request.getParameter("price");
		if(name!=null){
		String nametou8 = new String(name.getBytes("ISO-8859-1"),"utf-8");
		String authortou8 = new String(author.getBytes("ISO-8859-1"),"utf-8");
		String pricetou8 = new String(price.getBytes("ISO-8859-1"),"utf-8");
		String [] book = {nametou8,authortou8,pricetou8};
	 	books.add(book);
	 	session.setAttribute("books",books);
	 	request.getRequestDispatcher("orderForm.jsp").forward(request, response);
		}

		%>
</body>
</html>