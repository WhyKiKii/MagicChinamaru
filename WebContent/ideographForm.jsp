<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td {
	width:360px;
	text-align:center;
}

.txt {
	height:50px;
}
</style>
</head>
<body>
<%
	String fileName = "chinamaru_title.txt";
	String filePath = request.getRealPath("/WEB-INF/TXT/" + fileName);
	String sLine = "";
	String[] line = new String[10];
	int i = 0;
	
	FileReader fr = new FileReader(filePath);
	BufferedReader br = new BufferedReader(fr);
	
	while((sLine = br.readLine()) != null) {
		line[i] = sLine;
		i++;
	}
	br.close();
%>
	<table>
		<tr>
			<td><a href = ideographList.jsp?value=01><img src="img/01.jpg" width="210" height="280"></a></td>
			<td><a href = ideographList.jsp?value=02><img src="img/02.jpg" width="210" height="280"></a></td>
			<td><a href = ideographList.jsp?value=03><img src="img/03.jpg" width="210" height="280"></a></td>
			<td><a href = ideographList.jsp?value=04><img src="img/04.jpg" width="210" height="280"></a></td>
			<td><a href = ideographList.jsp?value=05><img src="img/05.jpg" width="210" height="280"></a></td>
		</tr>
		<tr class = "txt">
			<td><%= line[0] %></td>
			<td><%= line[1] %></td>
			<td><%= line[2] %></td>
			<td><%= line[3] %></td>
			<td><%= line[4] %></td>
		</tr>
		<tr>
			<td><a href = ideographList.jsp?value=06><img src="img/06.jpg" width="210" height="280"></a></td>
			<td><a href = ideographList.jsp?value=07><img src="img/07.jpg" width="210" height="280"></a></td>
			<td><a href = ideographList.jsp?value=08><img src="img/08.jpg" width="210" height="280"></a></td>
			<td><a href = ideographList.jsp?value=09><img src="img/09.jpg" width="210" height="280"></a></td>
			<td><a href = ideographList.jsp?value=10><img src="img/10.jpg" width="210" height="280"></a></td>
		</tr>
		<tr class = "txt">
			<td><%= line[5] %></td>
			<td><%= line[6] %></td>
			<td><%= line[7] %></td>
			<td><%= line[8] %></td>
			<td><%= line[9] %></td>
		</tr>
	</table>
</body>
</html>
