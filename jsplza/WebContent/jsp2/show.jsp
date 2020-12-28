<%@page import="org.apache.el.lang.ELSupport"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Spliterator"%>
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
	<%
		//获取前台传值
		String words = request.getParameter("in");
		//定义集合
		List<String> list = new ArrayList<String>();
		//根据空格分割  eg: ab cs x x
		String[] putstrspace = words.split(" ");
		//直接分割  eg: sadqwe
		String[] putstr = words.split("");
		//只判断空格分割，空格分割后的长度大于1时，说明有空格
		if(putstrspace.length>1){ 
		//去掉空格并将新值加入集合
		for(String str: putstrspace){
			if(str!=null&&!str.equals("")){
				list.add(str);
			}
		 } 
		putstrspace = list.toArray(new String[0]);
		//排序
		Arrays.sort(putstrspace);
		/* System.out.print(Arrays.toString(putstrspace)); */
		%>
		<p>空格<%=Arrays.toString(putstrspace) %></p>
		<p>longspace===<%=putstrspace.length %></p>
	<% 
		}
		//当空格分割的数组长度恒为1时，说明没有空格
		else if (putstrspace.length==1){
			/* for(String str1: putstr){
				if(str1!=null&&!str1.equals("")){
					list.add(str1);
				}
			 } 
			putstr = list.toArray(new String[0]); */
			Arrays.sort(putstr);
		
	%>
	<p>long===<%=putstr.length %></p>
	<p>无空格<%=Arrays.toString(putstr) %></p>
	<%
		}
	%>
	<br>
	<%=words %>
</body>
</html>