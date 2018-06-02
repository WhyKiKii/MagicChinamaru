<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic|Sunflower:300');

body {
	font-family:'Nanum Gothic';
}

article.t_main {
	margin:2%;
	padding:50px;
	border:1px solid black;
}
</style>
</head>
<body>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
%>

<header>
	<jsp:include page = "top.jsp" flush = "false"/>
</header>

<section>
	<article class = "t_main">
		<jsp:include page ="<%= contentPage %>" flush="false"/>
	</article>
</section>
</body>
</html>
