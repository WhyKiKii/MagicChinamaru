<%@page import="java.util.Random"%>
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

input[type=submit] {
	font-size:16pt;
	border:1px solid black;
	padding:8px;
	margin-top:30px;
	background:#ffffff;
	width:100%;
	float:right;
	width:200px;
}

input[type=submit]:hover {
	background-color:#D02D2E;
	color:white;
	border:0 none;
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
	int i=0;
	
	File file = new File(filePath);
	BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
	
	while((sLine = br.readLine()) != null) {
		String a[];
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
	
	int cnt;
	String arrayName = "blank.txt";
	String arrayPath = request.getRealPath("/WEB-INF/TXT/"+arrayName);
	
	BufferedWriter fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(arrayPath),"UTF-8"));
	
	if(!num.equals("01")) {
		cnt = ideo.length;
	} else {
		cnt = ideo.length - 1;
	}
	
	Random rand = new Random();
	
	for(int k = 0; k < cnt; k++) {
		int a = rand.nextInt(cnt);
		int b = rand.nextInt(cnt);
		
		if(a != b && a != 20 && b != 20) {
			String temp, temp1;
			
			temp = ideo[a];
			ideo[a] = ideo[b];
			ideo[b] = temp;
			
			temp1 = mean[a];
			mean[a] = mean[b];
			mean[b] = temp1;
		}
		else k--;
	}
	
	for(int y = 0; y < cnt; y++) {
		String text = ideo[y] + "/" + mean[y];
		
		fw.write(text + "\r\n");
	}
	fw.close();
%>
<form action="blankscore.jsp" method="post">
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
			<td><input type = "text" name = "01" required></td>
			<td><input type = "text" name = "02" required></td>
			<td><input type = "text" name = "03" required></td>
			<td><input type = "text" name = "04" required></td>
			<td><input type = "text" name = "05" required></td>
			<td><input type = "text" name = "06" required></td>
			<td><input type = "text" name = "07" required></td>
			<td><input type = "text" name = "08" required></td>
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
			<td><input type = "text" name = "09" required></td>
			<td><input type = "text" name = "10" required></td>
			<td><input type = "text" name = "11" required></td>
			<td><input type = "text" name = "12" required></td>
			<td><input type = "text" name = "13" required></td>
			<td><input type = "text" name = "14" required></td>
			<td><input type = "text" name = "15" required></td>
			<td><input type = "text" name = "16" required></td>
		</tr>
		<tr class = "ideo">
			<td><%= ideo[16] %></td>
			<td><%= ideo[17] %></td>
			<td><%= ideo[18] %></td>
			<td><%= ideo[19] %></td>
			<td><% if(ideo[20] != null) { %><%= ideo[20] %> <% } %></td>
		</tr>
		<tr>
			<td><input type = "text" name = "17" required></td>
			<td><input type = "text" name = "18" required></td>
			<td><input type = "text" name = "19" required></td>
			<td><input type = "text" name = "20" required></td>
			<td><% if(mean[20] != null) { %><input type = "text" name = "21" required> <% } %></td>
		</tr>
		<tr>
			<td colspan = "2"><font color="#999999">* 띄어쓰기를 주의하여 작성해주세요<br>빈 칸없이 작성해주세요</font></td>
			<td colspan = "6"><input type= "submit" value = "결과보기"></td>
		</tr>
	</table>
</form>
</body>
</html>
