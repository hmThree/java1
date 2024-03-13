<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="day6.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	border:1px solid purple;
	border-collapse:collapse;
	width:500px;
	margin:0 auto;
}

td{
	border:1px solid purple;
}


</style>
</head>
<body>

<%  ArrayList<Book> list=  (ArrayList<Book>)  request.getAttribute("list"); %>
<table>
	<tr>
		<td>제목</td>
		<td>저자</td>
		<td>가격</td>
	</tr>
	<% for(int i=0; i<list.size(); i++){
		Book book = list.get(i);	
	%>
	<tr>
		<td><%=book.getTitle() %></td>
		<td><%=book.getAuthor() %></td>
		<td><%=book.getPrice() %></td>
	</tr>
	<%} %>
</table>
</body>
</html>