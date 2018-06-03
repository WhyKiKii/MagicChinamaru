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
	
	String fileName = "member.txt";
	String filePath = request.getRealPath("/WEB-INF/TXT/" + fileName);
	String fileLine = "";
	
	File tr = new File(filePath);
	BufferedReader brr = new BufferedReader(new InputStreamReader(new FileInputStream(tr),"UTF-8"));
	
	while((fileLine = brr.readLine()) != null) {
		String[] str;
		str = fileLine.split("/");

		if(id.equals(str[0]) && pw.equals(str[1])) {
			session.setAttribute("id", id);
			out.println("<script>location.href='Index.jsp';</script>");
			break;
		} else {
			out.println("<script>location.href='login.jsp';</script>");
		}	
	}
	brr.close();
%>
</body>
</html>
