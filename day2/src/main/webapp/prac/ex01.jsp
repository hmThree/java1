<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 두 수를 사용자로 부터 입력 받아 사칙연산해서 제공하기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.wrap{
	width:200px;
	border:1px solid black;
	padding :20px;
	box-sizing: border-box;	
	margin:0 auto;
	margin-top:200px;
	text-align: center;
}
</style>
</head>
<body>


<%
	String su1_ = request.getParameter("su1");
	String su2_ = request.getParameter("su2");
	
	int su1, su2;
	
	su1 = Integer.parseInt(su1_);
	su2 = Integer.parseInt(su2_);
	
	int total;
	total = su1+su2;
 //	out.println( total);

%>


<div class="wrap">
	<%=total%>
</div>


</body>
</html>