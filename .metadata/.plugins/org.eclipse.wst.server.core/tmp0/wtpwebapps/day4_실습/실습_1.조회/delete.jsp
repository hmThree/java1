<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  page import="java.sql.*" %>
<%

String store_cd = request.getParameter("store_cd");

String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:testdb";
String user = "scott";
String password = "tiger";	

try{
Class.forName(driver);		 
Connection  con = DriverManager.getConnection(url, user, password);

String sql  =" delete from store_ssada_tbl where store_cd =?";
PreparedStatement  pst =con.prepareStatement(sql);
pst.setString(1,store_cd);

int cnt = pst.executeUpdate();

} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

response.sendRedirect("lookupMain.jsp");

%>