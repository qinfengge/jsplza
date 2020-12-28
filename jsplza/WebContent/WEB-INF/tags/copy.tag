<%@tag import="java.io.OutputStream"%>
<%@tag import="java.io.InputStream"%>
<%@ tag language="java" pageEncoding="utf-8"%>
<%@ attribute name="from" required="true"%>
<%@ attribute name="to" required="true"%>
<%@tag import="java.io.File"%>
<%@tag import="java.io.FileOutputStream"%>
<%@tag import="java.io.BufferedReader"%>
<%@tag import="java.io.InputStreamReader"%>
<%@tag import="java.io.FileInputStream"%>
<%@ variable name-given="content" scope="AT_END" %>
<%@ variable name-given="errmsg" scope="AT_END" %>
<% 
	File f1 = new File(from);	//获取源文件对象
	File f2 = new File(to);		//获取目标文件对象
	File copyto = new File("");		//定义一个空文件对象
	String add1 = f1.getParent();	//获取源文件父类路径
	String add2 = f2.getParent();	//获取目标文件父类路径
	String g = f1.getPath();
	String[] gg = g.split("\\\\");		//分割父类文件路径 eg: G:copyfile/from.txt 分割后为 G:copyfile
	String ggg = gg[0];
	if(!f2.getParent().equals(System.getProperty("user.dir"))){
		copyto = new File(to);
		System.out.print(f2.getPath());
	}else{
		copyto = new File((ggg+"\\"+to));	//拼接
		System.out.print((ggg+"\\"+to));
	}
	int dataOfFile = 0; //文件字节内容
	if(!f1.exists()){
		String errmsg = "源文件不存在";
		String content = "空";
		jspContext.setAttribute("errmsg",errmsg);
		jspContext.setAttribute("content",content);
		return;
	}
	if(!copyto.exists()){
		copyto.createNewFile();
	}
		InputStream fis  = new FileInputStream(from);
		OutputStream fos = new FileOutputStream(copyto);
		while ((dataOfFile = fis.read()) > -1){
			fos.write(dataOfFile);
			String errmsg = "空";
			String content = "复制成功";
			jspContext.setAttribute("errmsg",errmsg);
			jspContext.setAttribute("content",content);
		}
		fis.close();
		fos.flush();
		fos.close();
%>