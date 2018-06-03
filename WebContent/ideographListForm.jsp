<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
table {
	text-align:center;
}

.ideo {
	font-size:45pt;
}

td {
	width:160pt;
	height:50pt;
}

table caption {
	font-size:20pt;
	margin-bottom:40pt;
}
</style>
</head>
<body>
<%
	String num = request.getParameter("value");

	String fileName = "chinamaru_"+num+ ".txt";
	String filePath = request.getRealPath("/WEB-INF/TXT/"+fileName);
	String sLine = "";
	String ideo[] = new String[21];
	String mean[] = new String[21];
	String a[];
	int i=0;
	
	File file = new File(filePath);
	BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
	
	while((sLine = br.readLine()) != null) {
		a = sLine.split("/");
		
		ideo[i] = a[0];
		mean[i] = a[1];
		
		i++;
	}
	br.close();
	
	String titleName = "chinamaru_title.txt";
	String titlePath = request.getRealPath("/WEB-INF/TXT/" + titleName);
	String titleLine = "";
	int j = 1;
	
	File titlefile = new File(titlePath);
	BufferedReader brr = new BufferedReader(new InputStreamReader(new FileInputStream(titlefile), "UTF-8"));
	
	while((titleLine = brr.readLine()) != null) {
		if(j == Integer.parseInt(num)) {
			break;
		}
		j++;
	}
	brr.close();
%>
<table>
	<caption><%= num%>권 - <%= titleLine %></caption>
	<tr class = "ideo">
		<td><%= ideo[0] %></td>
		<td><%= ideo[1] %></td>
		<td><%= ideo[2] %></td>
		<td><%= ideo[3] %></td>
		<td><%= ideo[4] %></td>
		<td><%= ideo[5] %></td>
		<td><%= ideo[6] %></td>
		<td><%= ideo[7] %></td>
	</tr>
	<tr >
		<td><%= mean[0] %></td>
		<td><%= mean[1] %></td>
		<td><%= mean[2] %></td>
		<td><%= mean[3] %></td>
		<td><%= mean[4] %></td>
		<td><%= mean[5] %></td>
		<td><%= mean[6] %></td>
		<td><%= mean[7] %></td>
	</tr>
	<tr class = "ideo"> 
		<td><%= ideo[8] %></td>
		<td><%= ideo[9] %></td>
		<td><%= ideo[10] %></td>
		<td><%= ideo[11] %></td>
		<td><%= ideo[12] %></td>
		<td><%= ideo[13] %></td>
		<td><%= ideo[14] %></td>
		<td><%= ideo[15] %></td>
	</tr>
	<tr >
		<td><%= mean[8] %></td>
		<td><%= mean[9] %></td>
		<td><%= mean[10] %></td>
		<td><%= mean[11] %></td>
		<td><%= mean[12] %></td>
		<td><%= mean[13] %></td>
		<td><%= mean[14] %></td>
		<td><%= mean[15] %></td>
	</tr>
	<tr class = "ideo">
		<td><%= ideo[16] %></td>
		<td><%= ideo[17] %></td>
		<td><%= ideo[18] %></td>
		<td><%= ideo[19] %></td>
		<td><% if(ideo[20] != null) { %><%= ideo[20] %> <% } %></td>
	</tr>
	<tr>
		<td><%= mean[16] %></td>
		<td><%= mean[17] %></td>
		<td><%= mean[18] %></td>
		<td><%= mean[19] %></td>
		<td><% if(mean[20] != null) { %><%= mean[20] %> <% } %></td>
	</tr>
</table>
</body>
</html>
