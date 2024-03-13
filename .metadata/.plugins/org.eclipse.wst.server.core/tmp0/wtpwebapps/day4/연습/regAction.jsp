<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  page import="java.sql.*" %>
 
 <%

 request.setCharacterEncoding("utf-8");
 
 String id = request.getParameter("id");
 String pw = request.getParameter("pw");
 String name = request.getParameter("name");
 
 
 out.println(id);
 out.println(pw);
 out.println(name);
 
 System.out.println(id);
 System.out.println(pw);
 System.out.println(name);
 
 
 // 데이터베이스  연동  
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
			String sql  ="insert into acorntbl( id, pw, name)  values( ?,?,?)";
			PreparedStatement  pst =con.prepareStatement(sql);
			pst.setString(1, id);	 //왼쪽 물음표부터 	 
			pst.setString(2, pw);	 //왼쪽 물음표부터
			pst.setString(3, name);	 //왼쪽 물음표부터						 
		    pst.executeUpdate();	
			
		 	
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 
 
 
 
 
 
  response.sendRedirect("index.html");
 %>