<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 		<%
		String name = request.getParameter("name");
		String author = request.getParameter("author");
		String price = request.getParameter("price");
		String nametou8 = new String(name.getBytes("ISO-8859-1"),"utf-8");
		String authortou8 = new String(author.getBytes("ISO-8859-1"),"utf-8");
		String pricetou8 = new String(price.getBytes("ISO-8859-1"),"utf-8");
		String [] book = {nametou8,authortou8,pricetou8};
	//String [] book={"1","2","3"};
	//ArrayList books = (ArrayList) session.getAttribute("books");
	List<String[]> books = new ArrayList<String[]>();
	if(book==null){
		books=new ArrayList<String[]>();
		session.setAttribute("books", books);
	}
	if(book!=null){
/* 		book[0]=name;
		book[1]=author;
		book[2]=price; */
		books.add(book);
		session.setAttribute("books", books);
		request.getRequestDispatcher("orderForm.jsp").forward(request, response);
	}
%> --%>
	<%
		//List<String[]> books = (List<String[]>)session.getAttribute("books");
		ArrayList<String[]> books = (ArrayList) session.getAttribute("books");
		String delete = request.getParameter("delete");
		if (delete != null) {
			int i = Integer.parseInt(delete);
			books.remove(i);
			session.setAttribute("books", books);
		}
		for (int i = 0; i < books.size(); i++) {
			//out.println(books.get(i)+"<br>");
			/* out.print("书名："+books.get(i)[0]+"<br>");
			out.print("作者："+books.get(i)[1]+"<br>");
			out.print("价格："+books.get(i)[2]+"<br>"); */
	%>
	
	<table border="1">
		<tr>
			<td><%=books.get(i)[0] %></td>
			<td><%=books.get(i)[1] %></td>
			<td><%=books.get(i)[2] %></td>
			<td><a href="orderForm.jsp?delete=<%=i%> ">删除</a></td>
		</tr>
	</table>
	<%
		}
	%>
	<%-- <%
		String delete = request.getParameter("delete");
		if (delete != null) {
			int i = Integer.parseInt(delete);
			books.remove(i);
			session.setAttribute("books", books);
		}
	%> --%>
</body>
</html>