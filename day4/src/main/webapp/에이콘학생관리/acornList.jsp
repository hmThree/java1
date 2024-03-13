<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
header{
 border:1px solid black;
 padding :20px;
 
}
nav{
	
	 border:1px solid black;
	 padding :10px;
}

a{
	text-decoration:none;
	color:black;
}
nav span{
   padding-right: 5px;
}


section {
 
 padding:10px;
}


footer{
  border:1px solid black;
  display: flex;
  padding:10px;
  
}

footer  > div{
 
}


footer > div:nth-child(1) {	 
	 width:20%;
}



footer > div:nth-child(2) {	 
	 width:60%;
}



footer > div:nth-child(3) {
	 
	 width:20%;
}

table{
	 width:400px;
	 border:1px solid black;
	 margin:0 auto;
	 border-collapse: collapse;
}

td{
 border:1px solid black;
 text-align: center;
}

</style>
</head>
<body>

<header>
<h2>HY대학교 수강신청 프로그램</h2>
</header>

<nav>
	<span> <a href="#">  메뉴1</a></span>
	<span> <a href="#">  메뉴2</a></span>
	<span> <a href="#">  메뉴3</a></span>
	<span> <a href="#">  메뉴4</a></span>
</nav>

<section>
  
  <table>
  <caption>  에이콘 학생조회 </caption>
  <!--  제목줄 -->
  	<tr>
  	  <td>아이디 </td>
  	  <td>비번</td>
 	  <td>이름</td> 
 	  <td>수정/삭제</td>  	     	  
  	</tr>  
  
  <%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:testdb";
	String user = "scott";
	String password = "tiger";	
	
			
	try {
		//1. 드라이버 로드 (객체생성)
		Class.forName(driver);			
		//2. 데이터베이스 연결
		Connection  con = DriverManager.getConnection(url, user, password);
		
		//3. 문장얻어오기 
		  
		String sql  ="select * from  acorntbl";
		PreparedStatement  pst =con.prepareStatement(sql);
	 
		//5.실행 ( executeQuery()-조회,  executeUpdate()- 나머지 등록, 변경, 삭제)
		ResultSet  rs =pst.executeQuery();	
		
		//
		while( rs.next()) {		
  %>	

  	<tr>
  	  <td> <%= rs.getString(1) %> </td>
  	  <td> <%= rs.getString(2) %></td>
 	  <td> <%= rs.getString(3) %></td>  
 	   <td>
 	    <a href="updateForm.jsp?id=<%= rs.getString(1) %>">수정</a>
 	   /
 	    <a href="deleteAction.jsp?id=<%= rs.getString(1)%>">삭제</a></td>  	  	     	  
  	</tr> 
  	
  	<%
		} 			
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
  	
  	
  	%>
  </table>
 
</section>

<footer>
	<div>ACORN</div>
	<div>회사소개인재채용제휴제안이용약관개인정보처리방침청소년보호정책네이버 정책고객센터ⓒ NAVER Corp.</div>
	<div>기업 사이트</div>
</footer>
</body>
</html>


 


