<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	try {
		String fileName = "member.txt";
		String filePath = request.getRealPath("/WEB-INF/TXT/"+fileName);
		
		BufferedWriter fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath,true),"UTF-8"));
		String text = name + "/" + id + "/" + pw;
			
		fw.write(text + "\r\n");
			
		fw.flush();
		fw.close();

	} catch(Exception e) {
		e.printStackTrace();
	}
%>
joinproc
</body>
</html>
