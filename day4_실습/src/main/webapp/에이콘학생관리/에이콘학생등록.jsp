<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
 div{ 
  border:1px solid black;
 }
 
 .wrap{
 width:500px;
 margin:0  auto;
 }
 
 .line{
   display: flex;
 }
 
 .col1{
  width:30%;
 }
 
 .col2{
  width:70%;
 }
 
 
 .line1, .line5{
 text-align: center;
 }
 
 
 .col1, .col2{
 padding:5px;
 }
  
</style>
</head>
<body>

<form  action="regAction.jsp"  method="post">
	<div  class="wrap">
		 <div class="line1">
			   <h2> 학생등록 </h2>
		</div>
	
		<div class="line">
			<div class="col1">아이디</div>
			<div class="col2"><input type="text"  name="id"></div>	
		</div>
		
	
		<div class="line">
			<div class="col1">비번</div>
			<div class="col2"><input type="text" name="pw"></div>	
		</div>
		
	    <div class="line">
			<div class="col1">이름</div>
			<div class="col2"><input type="text" name="name"></div>	
		</div>	
		
		<div class="line5">
		<!--  form 안에 있는 버튼은 submit 지정,(action에 지정된 페이지로 이동함) -->	
		 <button>등록</button>
		 <button>취소</button>
		</div>
	</div>
</form>

</body>
</html>