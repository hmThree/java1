<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table{
	border:1px solid black;
	width:300px;
	margin:100px auto;
	border-collapse: collapse;
}

td{
border:1px solid black;
text-align: center;
}
</style>

</head>
<body>


<form name="frm"  action="/day7/reg"  method="post">
<table>
	<caption>에이콘 학생등록 </caption>
	<tr>
	<td>아이디</td>
	<td> <input type="text"  name="id"></td>
	</tr>
	
	<tr>
	<td>비밀번호</td>
	<td> <input type="text"  name="pw"></td>
	</tr>
	
	<tr>
	<td>이름</td>
	<td> <input type="text"  name="name"></td>
	</tr>
	
	<tr> 
	<td colspan="2"> 
		<button type="submit">등록</button>
		<button type="reset">취소</button>
	</td>
	</tr>

</table>

</form>
</body>
</html>