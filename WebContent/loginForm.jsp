<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.whole{
	margin:auto;
	padding:auto;
	width:250px;
}

div input {
	
}

input[type=submit] {
	font-size:20pt;
	background-color:#D02D2E;
	padding:5px;
	margin-top:45px;
	margin-left:65px;
	color:white;
	width:120px;
	border:0 none;
}

div.infor {
	display:block;
	margin-top:15pt;
	font-style:bold;
	font-size:15pt;
}

input[type=text] {
	float:right;
}

</style>
</head>
<body>
	<form action="loginProc.jsp" method = "post">
		<div class = "whole">
			<div class= "infor">아이디 <input type = "text" name = "id" size = "18"></div>
			<div class= "infor">비밀번호 <input type = "text" name = "pw" size = "18"></div>
			<input type = "submit" value = "로그인">
		</div>
	</form>
</body>
</html>
