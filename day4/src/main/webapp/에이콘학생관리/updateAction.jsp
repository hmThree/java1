<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>	
 
    


<%


request.setCharacterEncoding("utf-8");
String id =  request.getParameter("id");;
String pw =  request.getParameter("pw");
String name  = request.getParameter("name");

out.println( id);
out.println( pw);
out.println( name);


String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:testdb";
String user = "scott";
String password = "tiger";	

		
try {
	 
	Class.forName(driver);		 
	Connection  con = DriverManager.getConnection(url, user, password);	
	 
	 
	String sql  =" update acorntbl 	set  pw=?  where id= ?";
	PreparedStatement  pst =con.prepareStatement(sql);
	pst.setString(1, pw);
	pst.setString(2, id);	
    int cnt  =pst.executeUpdate();  // 등록, 변경, 삭제	
    System.out.println( cnt +"개수 변경 되었음");
	 		
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


response.sendRedirect("acornList.jsp");
%>

    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  변경완료 !!
</body>
</html>