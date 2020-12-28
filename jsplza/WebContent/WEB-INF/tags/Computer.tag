<%@ tag language="java" pageEncoding="utf-8" %>
<%@ attribute name="num1" required="true" %>
<%@ attribute name="num2" required="true" %>
<%@ attribute name="se" required="true" %>
<%@ variable name-given="va" variable-class="java.lang.Integer" scope="AT_END"%>
<%
int num1toint = Integer.parseInt(num1);
int num2toint = Integer.parseInt(num2);
char se1 = se.charAt(0);
int value=0;
 switch(se1){
 case '+' :
	 value  = num1toint+num2toint;
	 break;
 case '-' :
	 value  = num1toint-num2toint;
	 break;
 case '*' :
	 value  = num1toint*num2toint;
	 break;
 case '/' :
	 value  = num1toint/num2toint;
	 break;
 }
 jspContext.setAttribute("va", value);
%>