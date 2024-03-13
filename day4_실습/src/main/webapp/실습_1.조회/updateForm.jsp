<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>

<%
String store_cd  = request.getParameter("store_cd");
out.println(store_cd);
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:testdb";
String user = "scott";
String password = "tiger";

String store_nm="";
String store_addr="";
String store_tel="";
String store_img="";

try {
Class.forName(driver);			
Connection  con = DriverManager.getConnection(url, user, password);
String sql  ="select * from  store_ssada_tbl where store_cd  =?";
PreparedStatement  pst =con.prepareStatement(sql);
pst.setString(1, store_cd );	 
ResultSet  rs =pst.executeQuery();

if(rs.next()){
	store_nm = rs.getString(2);
	store_addr = rs.getString(3);
	store_tel = rs.getString(4);
	store_img = rs.getString(5);
}
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

header{
	margin:0 auto;
	border:1px solid black;
	text-align:center;
	width:500px;
}

div{
	/*border:1px solid black;*/
}
form{
	width:500px;
	margin:0 auto;
	margin-top:5px;
	border:1px solid purple;
}
.no1{
	width:30%;
	border:1px solid purple;
}
.no2{
	width:70%;
	border:1px solid purple;
}
.cols{
	display:flex;
	
}
.btndiv{
	text-align:center;
}

</style>
</head>
<body>




<form name ="sec" action="updateAction.jsp" method="get">
	<header><h2>!! 수정시작 !!</h2></header>
	<div class=cols>
		<div class= no1>점포코드</div>
		<div class= no2><input type="text" name="store_cd" value="" readonly="readonly"></div>
	</div>
	
	<div class=cols>
		<div class= no1>점포명</div>
		<div class= no2><input type="text" name="store_nm" value=""></div>
	</div>
	
	<div class=cols>
		<div class= no1>주소</div>
		<div class= no2><input type="text" name="store_addr" value=""></div>
	</div>
	
	<div class=cols>
		<div class= no1>전화번호</div>
		<div class= no2><input type="text" name="store_tel" value=""></div>
	</div>
	
	<div class=cols>
		<div class= no1>이미지주소</div>
		<div class= no2><input type="text" name="store_img" value=""></div>
	</div>
	
	<div class=btndiv>
		<button>변경</button>
	</div>
</form>

</body>
</html>

<script>

	 let sec = document.sec;
	 sec.store_cd.value="<%=store_cd%>";
	 sec.store_nm.value="<%=store_nm%>";
	 sec.store_addr.value="<%=store_addr%>";
	 sec.store_tel.value="<%=store_tel%>";
	 sec.store_img.value="<%=store_img%>";
	 
</script>