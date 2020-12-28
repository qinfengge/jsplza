<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="file"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="read.jsp">
<input type="radio" name="c" value="jia">读取加密的文件<br>
<input type="radio" name="c" value="jie">读取解密的文件<br>
<INPUT TYPE="submit" value="提交" name="submit">
</form>
<%
	request.setCharacterEncoding("utf-8");
	/* response.setCharacterEncoding("GBK"); */
	String sel = request.getParameter("c");
	if(sel!=null){
		
	
%>
<file:fileRead sel="<%=sel %>"></file:fileRead>
<TextArea rows=6 cols=20><%=content%>
</TextArea>
<%
	}
%>
</body>
</html>