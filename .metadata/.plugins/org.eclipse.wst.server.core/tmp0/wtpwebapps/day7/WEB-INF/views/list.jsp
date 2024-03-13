<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="day7.Acorn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="/day7/css/list.css"  type="text/css"  rel="stylesheet" >
</head>
<body>
<table>

<tr>
<td>아이디 </td>
<td>비번 </td>
<td>이름 </td>
</tr>
<%   ArrayList<Acorn> list  = (ArrayList<Acorn>) request.getAttribute("list");
 	for( Acorn   acorn : list){
%>

		<tr>
		<td><%=acorn.getId() %> </td>
		<td><%=acorn.getPw() %> </td>
		<td><%=acorn.getName() %> </td>
		</tr>

<%} %>
</table>

</body>
</html>