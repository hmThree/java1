<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="day2.Score" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 table{
 	width:500px;
 	border:1px solid black;
 	margin:0 auto;
 	
 }
 
 td{
 	border:1px solid black;
 }
</style>

</head>
<body>


<%
  Score s = new Score("홍길동",80,92); 
%>
<table>
<thead>
<tr>
<td>이름</td>
<td>국어</td>
<td>영어</td>
<td>평균</td>
<td>학점</td>
</tr>
</thead>

<tbody>
<tr>
<td> <%=s.getName() %></td>
<td> <%=s.getKor() %></td>
<td> <%=s.getEng() %></td>
<td> <%=s.getAvg() %></td>
<td> <%=s.getGrade() %></td>
</tr>
</tbody>
</table>

</body>
</html>