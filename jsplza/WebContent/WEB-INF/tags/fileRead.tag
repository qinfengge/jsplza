<%@tag import="java.io.FileOutputStream"%>
<%@tag import="java.io.BufferedReader"%>
<%@tag import="java.io.InputStreamReader"%>
<%@tag import="java.io.FileInputStream"%>
<%@tag import="java.io.FileWriter"%>
<%@tag import="java.io.BufferedWriter"%>
<%@tag import="java.io.InputStream"%>
<%@tag import="java.io.OutputStream"%>
<%@ tag language="java" pageEncoding="utf-8"%>
<%@tag import="java.io.File"%>
<%@ attribute name="sel" required="true"%>
<%@ variable name-given="content" scope="AT_END" %>
<% 
request.setCharacterEncoding("utf-8");
/* response.setCharacterEncoding("GBK"); */
String jie = "G:/src.txt";
String jia = "G:/save.txt";
if("jia".equals(sel)){
	File f = new File(jia);
	if(f.exists()){
		FileInputStream fis = new FileInputStream(jia);
		InputStreamReader isr = new InputStreamReader(fis,"GBK");
		BufferedReader bfread = new BufferedReader(isr);
		String line = null;
		StringBuffer sb = new StringBuffer();
		while((line=bfread.readLine())!=null){
			//line=bfread.readLine();
			sb.append(line+"\n");
		}
			String con = new String(sb.toString().getBytes(),"GBK");
			jspContext.setAttribute("content",con);
	}else {
		jspContext.setAttribute("content","");
	}
}

/* if("jie".equals(sel)){
	File f = new File(jie);
	if(f.exists()){
		FileInputStream fis = new FileInputStream(jie);
		InputStreamReader isr = new InputStreamReader(fis,"utf-8");
		BufferedReader bfread = new BufferedReader(isr);
		String line = null;
		StringBuffer sb = new StringBuffer();
		while((line=bfread.readLine())!=null){
			//line=bfread.readLine();
			sb.append(line+"\n");
			jspContext.setAttribute("content",sb);
		}
	}else {
		jspContext.setAttribute("content","");
	}
} */
if("jie".equals(sel)){
	File encFile = new File("G:/save.txt"); //加密文件
	File decFile = new File("G:/dec.txt"); //解密文件
	int numOfEncAndDec = 0x99; //加密解密秘钥
	int dataOfFile = 0; //文件字节内容
	if(!encFile.exists()){
		System.out.println("encFile file not exixt");
		return;
	}
	if(!decFile.exists()){
		System.out.println("decFile file created");
		decFile.createNewFile();
	}
	InputStream fis  = new FileInputStream(encFile);
	OutputStream fos = new FileOutputStream(decFile);
	while ((dataOfFile = fis.read()) > -1){
		fos.write(dataOfFile^numOfEncAndDec);
	}
	
	if(decFile.exists()){
		FileInputStream fis1 = new FileInputStream("G:/dec.txt");
		InputStreamReader isr = new InputStreamReader(fis1,"GBK");
		BufferedReader bfread = new BufferedReader(isr);
		String line = null;
		StringBuffer sb = new StringBuffer();
		while((line=bfread.readLine())!=null){
			//line=bfread.readLine();
			sb.append(line+"\n");
		}
			String con = new String(sb.toString().getBytes(),"GBK");
			jspContext.setAttribute("content",con);
			System.out.print(con);
	}else {
		jspContext.setAttribute("content","");
	}
	fis.close();
	fos.flush();
	fos.close();
}
%>