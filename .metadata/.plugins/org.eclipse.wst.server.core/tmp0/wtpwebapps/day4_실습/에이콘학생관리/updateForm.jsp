<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>	
	
<%

 String id  = request.getParameter("id");
 out.println( id);
 String driver = "oracle.jdbc.driver.OracleDriver";
 String url = "jdbc:oracle:thin:@localhost:1521:testdb";
 String user = "scott";
 String password = "tiger";	
 
 
 String  pw ="";
 String  name="";
 
	
			
	try {
		//1. 드라이버 로드 (객체생성)
		Class.forName(driver);			
		//2. 데이터베이스 연결
		Connection  con = DriverManager.getConnection(url, user, password);
		
		//3. 문장얻어오기 
	 
		String sql  ="select * from  acorntbl where id  =?";
		PreparedStatement  pst =con.prepareStatement(sql);
		pst.setString(1, id);	 //왼쪽 물음표부터 	 
		
		//5.실행 ( executeQuery()-조회,  executeUpdate()- 나머지 등록, 변경, 삭제)
		ResultSet  rs =pst.executeQuery();	
		
		//
		if( rs.next()) {	
			 
			 pw  = rs.getString(2);
			 name = rs.getString(3);
		} 			
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}


  out.println( pw);
  out.println(name);


%>	
	
	
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

<form  name="frm" action="updateAction.jsp"  method="post">
	<div  class="wrap">
		 <div class="line1">
			   <h2> 학생정보 조회 </h2>
		</div>
	
		<div class="line">
			<div class="col1">아이디</div>
			<div class="col2"><input type="text"  name="id" value=""  readonly="readonly"></div>	
		</div>
		
	
		<div class="line">
			<div class="col1">비번</div>
			<div class="col2"><input type="text" name="pw" value=""></div>	
		</div>
		
	    <div class="line">
			<div class="col1">이름</div>
			<div class="col2"><input type="text" name="name"  value=""></div>	
		</div>	
		
		<div class="line5">
		<!--  form 안에 있는 버튼은 submit 지정,(action에 지정된 페이지로 이동함) -->	
		 <button>변경</button>		 
		</div>
	</div>
</form>

</body>
</html>




<script>

	 let frm = document.frm;
	 alert( frm);	 
	 
	 frm.id.value="<%=id%>";
	 frm.pw.value="<%=pw%>";
	 frm.name.value="<%=name%>";	 
	 
</script>