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

button {
	font-size:16pt;
	border:1px solid black;
	padding:8px;
	margin-top:30px;
	background:#ffffff;
	width:100%;
}

button:hover {
	background-color:#D02D2E;
	color:white;
	border:0 none;
}
</style>
</head>
<body>
<%
	String answer[] = new String[21];

	answer[0] = request.getParameter("01");	answer[1] = request.getParameter("02");	answer[2] = request.getParameter("03");
	answer[3] = request.getParameter("04");	answer[4] = request.getParameter("05");	answer[5] = request.getParameter("06");
	answer[6] = request.getParameter("07");	answer[7] = request.getParameter("08");	answer[8] = request.getParameter("09");
	answer[9] = request.getParameter("10");	answer[10] = request.getParameter("11"); answer[11] = request.getParameter("12");
	answer[12] = request.getParameter("13"); answer[13] = request.getParameter("14"); answer[14] = request.getParameter("15");
	answer[15] = request.getParameter("16"); answer[16] = request.getParameter("17"); answer[17] = request.getParameter("18");
	answer[18] = request.getParameter("19"); answer[19] = request.getParameter("20"); answer[20] = request.getParameter("21");

	out.println("<script>alert("+answer[0]+");</script>");
	
	String fileName = "blank.txt";
	String filePath = request.getRealPath("/WEB-INF/TXT/" + fileName);
	String fileLine = "";
	String ideo[] = new String[21];
	String mean[] = new String[21];
	int i = 0;
	
	File file = new File(filePath);
	BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
	
	while((fileLine = br.readLine()) != null) {
		if(!fileLine.equals("")) {
			String a[] = fileLine.split("/");
			
			ideo[i] = a[0];
			mean[i] = a[1];
			
			i++;
		}
		else {
			ideo[i] = null;
			mean[i] = null;
		}
	}
	br.close();
	
	int cnt = 0;
	int score = 0;
	int wrong[] = new int[21];
	
	String fName = "blankscore.txt";
	String fPath = request.getRealPath("/WEB-INF/TXT/"+fName);
	
	BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fPath,true),"UTF-8"));
	
	String line = "";
	
	for(int j = 0; j < i; j++) {
		if(answer[j].equals(mean[j])) {
			score++;
			out.println("<script>alert("+score+");</script>");
		} else {
			wrong[cnt] = j;
			line  = ideo[j] + "/" + mean[j];
			
			bw.write(line + "\r\n");
			cnt++;
		}
	}
	
	bw.write("\r\n");
	bw.close();
%>
<table>
	<caption>빈칸채우기 결과</caption>
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
	<tr style = "text-align:right;">
		<td colspan="6">점수 : <font color=red size=11pt><%= score %></font>개 틀림</td>
		<td colspan="2"><button onclick = "location.href = 'Index.jsp';">홈으로</button></td>
	</tr>
	<tr style = "text-align:right;">
		<td colspan="6">
			(<% for(int y = 0; y<cnt; y++) {
			if(y!= cnt-1) {
				out.print(wrong[y]+1 + ", ");
			} else {
				out.print(wrong[y]+1);
			}
		}%>)
		</td>
		<td colspan="2"><button onclick = "location.href = 'blankscorelist.jsp';">결과 목록보기</button></td>
	</tr>
</table>
</body>
</html>