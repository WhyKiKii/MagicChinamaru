<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	try {
		String fileName = "member.txt";
		String filePath = request.getRealPath("/WEB-INF/TXT/"+fileName);
		
		BufferedWriter fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath,true),"UTF-8"));
		String text = id + "/" + pw;
			
		fw.write(text + "\r\n");
		fw.close();

	} catch(Exception e) {
		e.printStackTrace();
	}
%>
 회원가입이 완료되었습니다.<br>
 로그인을 해주세요.
</body>
</html>
