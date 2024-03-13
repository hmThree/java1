<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
 String[]  imgs  = { "b.jpeg", "b.jpeg" , "b.jpeg"};

// 0  1   2
 int randomIndex  = ( int) Math.random()*3;
 String rImg = imgs[randomIndex]; 	

%>

<img src="../<%=rImg%>">


</body>
</html>