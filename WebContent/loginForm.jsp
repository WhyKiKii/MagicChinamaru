<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
div.whole{
	margin:auto;
	padding:auto;
	width:250px;
}

div.whole span {
	font-size:20pt;
	margin-bottom:80px;
	margin-left:80px;
}

input[type=submit] {
	font-size:16pt;
	border:1px solid black;
	padding:8px;
	margin-top:30px;
	background:#ffffff;
	width:100%;
}

input[type=submit]:hover {
	background-color:#D02D2E;
	color:white;
	border:0 none;
}

div.infor {
	display:block;
	margin-top:15pt;
	font-style:bold;
	font-size:15pt;
}

input[type=text], input[type=password] {
	float:right;
}

</style>
</head>
<body>
	<form action="loginProc.jsp" method = "post">
		<div class = "whole">
			<span>로그인</span><p>
			<div class= "infor">아이디 <input type = "text" name = "id" size = "18"></div>
			<div class= "infor">비밀번호 <input type = "password" name = "pw" size = "18"></div>
			<input type = "submit" value = "로그인">
		</div>
	</form>
</body>
</html>
