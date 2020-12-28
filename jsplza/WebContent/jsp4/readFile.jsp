<%@page import="java.io.*"%>
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
	String path = request.getParameter("path");
	File f = new File(path); 
	if(f.exists()){
		out.print("<br>文件path:"+path+"内容:");
		//FileReader fread = new FileReader(f);
		FileInputStream fis = new FileInputStream(path);
		InputStreamReader isr = new InputStreamReader(fis,"utf-8");
		BufferedReader bfread = new BufferedReader(isr);
		String line = null;
		StringBuffer sb = new StringBuffer();
		while((line=bfread.readLine())!=null){
			//line=bfread.readLine();
			sb.append(line+"\n");
			out.print("<br>"+sb);
		}
	}else{
		request.getRequestDispatcher("error.jsp").forward(request, response);
	}
%>
</body>
</html>