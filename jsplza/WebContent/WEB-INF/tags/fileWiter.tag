<%@tag import="java.io.FileOutputStream"%>
<%@tag import="java.io.FileInputStream"%>
<%@tag import="java.io.File"%>
<%@tag import="java.io.IOException"%>
<%@tag import="java.io.FileWriter"%>
<%@tag import="java.io.BufferedWriter"%>
<%@tag import="java.io.InputStream"%>
<%@tag import="java.io.OutputStream"%>
<%@ tag language="java" pageEncoding="utf-8"%>
<%@ attribute name="fileContent" required="true"%>
<%@ variable name-given="i" variable-class="java.lang.Integer"
	scope="AT_END"%>
<%
request.setCharacterEncoding("utf-8");
try {
	BufferedWriter bf = new BufferedWriter(new FileWriter("G:/src.txt"));
	bf.write(fileContent);
	bf.close();
} catch (IOException e) {
}
%>
<% 
File srcFile = new File("G:/src.txt"); //初始文件
File encFile = new File("G:/save.txt"); //加密文件
int numOfEncAndDec = 0x99; //加密解密秘钥
int dataOfFile = 0; //文件字节内容
	if(!srcFile.exists()){
		System.out.println("source file not exixt");
		return;
	}
	if(!encFile.exists()){
		System.out.println("encrypt file created");
		encFile.createNewFile();
	}
	InputStream fis  = new FileInputStream(srcFile);
	OutputStream fos = new FileOutputStream(encFile);
	while ((dataOfFile = fis.read()) > -1){
		fos.write(dataOfFile^numOfEncAndDec);
	}
	fis.close();
	fos.flush();
	fos.close();
	//返回
	int i = 1;
	jspContext.setAttribute("i", i);
%>