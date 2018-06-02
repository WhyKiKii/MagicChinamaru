<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>마법천자문</title>
<style>
img {
	display:block;
	margin-left:auto;
	margin-right:auto;
}

.login {
	text-align:right;
	margin-right:2%;
	font-size:15pt;	
}

.login a {
	text-decoration:none;
	color:black;
}

.login a:hover {
	border:1px solid black;
	padding:5px;
	color:red;
}
</style>
</head>
<body>
<a href = "ideograph.jsp"><img src = "img/images.jpg"/></a>
<% 
	if(((String)session.getAttribute("id")) == null || ((String)session.getAttribute("id")).equals("")) { %>
	<div class = "login"><a href = "login.jsp">로그인</a>
	&nbsp;&nbsp;&nbsp;&nbsp;<a href = "join.jsp">회원가입</a></div>
<% } else { %>
	<div class = "login"><a href = "logout.jsp">로그아웃</a>
	&nbsp;&nbsp;&nbsp;&nbsp;<a href = "study.jsp">나의 공부방</a></div>
<% } %>
</body>
</html>
