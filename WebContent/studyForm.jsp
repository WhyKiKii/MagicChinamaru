<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
article {
	margin:1%;
	padding:20px;
}
</style>
</head>
<body>
	<a href = "canvas.jsp" target = main>따라그리기</a> | <a href = "blank.jsp" target = main>빈칸 채우기</a> | 한자 수업
	
	<section>
		<article>
			<iframe src = "main.jsp" name = "main" width = "100%" height = "700" style = "border:none"></iframe>
		</article>
	</section>
</body>
</html>
