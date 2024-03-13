<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 책정보서비스 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
 table{
 width:400px;
 border:1px solid black;
 margin: 0 auto;
 }
 td{
 border:1px solid black;
 }
</style>
</head>
<body>
 <%  //자바코드 
   String title="재미있는 책";
   String author="홍길동";
   int price  =15000;
 %>
 <table>
 <tr>
 <td>제목</td>
 <td>저자</td>
 <td>가격</td>
 </tr>
 
 <tr>
 <td><% out.println( title); %></td>
 <td><% out.println( author); %></td>
 <td><% out.println( price); %></td>
 </tr>
 </table>
 
</body>
</html>