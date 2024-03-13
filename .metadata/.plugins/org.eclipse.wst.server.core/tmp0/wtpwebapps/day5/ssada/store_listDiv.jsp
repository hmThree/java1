<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	 
	 
	 *{	 
		 padding:0px;
		 margin:0px;
	 }
	 
	 ul{
	     /*전체 크기*/
		 width: 1060px;
		 
		 /* li 옆으로 */
		 display: flex;
		 /* 다음줄에 나올 수 있도록*/
		 flex-wrap: wrap;
		 
		 /* 가운데*/
		 margin:0 auto;
		 border:1px solid red;
		 list-style: none;
	 }
	 
	 ul > li{
	 	border:1px solid black;
	 	width:500px;  /* 점정보 너비 */
	 	display: flex;
	 	font-size: 12px;
	 	box-sizing: border-box;
	 	
	 	 
	 	margin-top:30px;   /*  */
	 	margin-left: 30px;
	 }
	 
	 .info_wrap{
	 	padding:10px;
	 	margin-top:30px;
	 }
</style>
</head>
<body>


 

	<ul class="wrap">	
	<!--   -->	
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
		
		 
		Class.forName(driver);		 
		con= DriverManager.getConnection(url, user, password);		 
		String sql ="select * from store_ssada_tbl";  
		pst = con.prepareStatement(sql) ;
		 
		
		rs = pst.executeQuery( sql) ;
		 
		while( rs.next() ) {
			
	%> 
	
	
		<li>
			<div class="img_wrap">
				 <img src="../imgs/<%=rs.getString(5) %>"></div>
			<div class="info_wrap"> 
				<p><%=rs.getString(2) %></p>
				<p><%=rs.getString(3) %></p>
				<p><%=rs.getString(4) %></p>
			</div>
		</li>
		
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
	</ul>

 
</body>
</html>