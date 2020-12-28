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
<script type="text/javascript">
	function iseg(str) {
		/* var str = input.replace(/(^\s*)|(\s*$)/g,""); */
		//校验，输入数据必须为英文及空格，且空格不能在首尾
		var reg = /^[A-Za-z][A-Za-z\s]*[A-Za-z]$/;
		if(str!=""&&!reg.test(str)){
		alert("请输入支持的类型！");
		return false;
		}
	}
</script>
<body>
	<form action="show.jsp" method="post">
		<input type="text" name="in" placeholder="请输入英文" onblur="iseg(this.value)"> <input type="submit" value="提交">
	</form>
</body>
</html>