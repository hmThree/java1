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
	border:1px solid purple;
	padding:20px;
	text-align:center;
}
nav{
	border:1px solid purple;
	padding:5px;
	margin-top:5px;
}
section{
	border:1px solid purple;
	padding:20px;
	text-align:center;
	margin-top:5px;
}
table{
	border:1px solid purple;
	width:1000px;
	margin:0 auto;
}

td{
	text-align: center;
}
</style>
</head>
<body>

<header>!!이게 무슨 DB인진 모르겠지만 아무튼DB임!!</header>
<nav>
	<span><a href="lookupMain.jsp"> 조회 </a></span>
	<span><a href="#"> 등록 </a></span>
</nav>

<section>
	<table>
		<tr>
			<td>등록코드</td>
			<td>점포명</td>
			<td>주소</td>
			<td>번호</td>
			<td>이미지</td>
		</tr>
		
		<%
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:testdb";
			String user = "scott";
			String password = "tiger";
		
			try{
				Class.forName(driver);
				Connection con = DriverManager.getConnection(url, user, password);
				
				String sql = "select * from store_ssada_tbl";
				PreparedStatement pst = con.prepareStatement(sql);
				
				ResultSet rs = pst.executeQuery();
				
				while(rs.next()){
			%>
			
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td>
				<a href="updateForm.jsp?store_cd=<%=rs.getString(1)%>">수정</a> / 
				<a href="delete.jsp?store_cd=<%=rs.getString(1)%>">삭제</a>
				</td>			
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


</body>
</html>