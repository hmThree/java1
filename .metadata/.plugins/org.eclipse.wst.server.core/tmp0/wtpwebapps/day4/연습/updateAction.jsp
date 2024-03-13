<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@  page import="java.sql.*" %>
 
 <%
 
  request.setCharacterEncoding("utf-8");
  String id = request.getParameter("id");
  String pw = request.getParameter("pw");
 
  
  out.println( id);
  out.println( pw);
  
  
  
  //
  
  		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:testdb";
		String user = "scott";
		String password = "tiger";	
		
				
		try {
		 
			Class.forName(driver);			
			 
			Connection  con = DriverManager.getConnection(url, user, password);	
			id = id.trim();
			pw= pw.trim();
			 
			String sql  ="update acorntbl set pw=? where id=?";
			
			
			System.out.println( "sql=" + sql);
			System.out.println( "id="  + id);
			System.out.println( "pw=" + pw);
			
			PreparedStatement  pst =con.prepareStatement(sql);
			pst.setString(1, pw);	 //왼쪽 물음표부터 
			pst.setString(2, id);	 //왼쪽 물음표부터
			int cnt  =pst.executeUpdate();			
		 		
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//response.sendRedirect("index.html");
 %>
 
 
 