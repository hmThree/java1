<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table{

margin:0 auto;
border:1px solid black;
border-collapse: collapse;

}

td{
border:1px solid black;
}
</style>
</head>
<body>


<table>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>

<%
 
	Connection con=null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	try{ 
		//데이터베이스 연결정보
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:testdb";
		String user="scott";
		String password="tiger";
		
		 //1. 오라클드라이버 로딩
		Class.forName(driver); 
		 //2. 데이터베이스 연결
		con= DriverManager.getConnection(url, user, password);
		 //3. statement 얻어오기
		 
		 String sql ="select * from store_ssada_tbl"; //5. 최종적으로 실행
		  pst = con.prepareStatement(sql) ;
		 //4. 필요한 sql 작성
		
		rs = pst.executeQuery( sql) ;
		 //6. 가져온 쿼리 결과를 화면에 출력하기
		while( rs.next() ) {
			
			%>
<tr>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><img src="../imgs/<%= rs.getString(5) %>"></td>
</tr>

<%
	
	 
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{ //자원의 반납
		if( rs!= null) rs.close();
		if( pst != null) pst.close();
		if( con != null) con.close();
	}
	%>	 
</table>

</body>
</html>