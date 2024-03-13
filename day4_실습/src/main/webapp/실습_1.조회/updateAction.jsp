<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>

<%

String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:testdb";
String user = "scott";
String password = "tiger";	

request.setCharacterEncoding("utf-8");
String store_cd = request.getParameter("store_cd");
String store_nm = request.getParameter("store_nm");
String store_addr = request.getParameter("store_addr");
String store_tel = request.getParameter("store_tel");
String store_img = request.getParameter("store_img");



try{
	
	Class.forName(driver);		 
	Connection  con = DriverManager.getConnection(url, user, password);	
	 
	String sql = "update store_ssada_tbl set store_nm = ?, store_addr=?,store_tel=?,store_img=? where store_cd=?";
	//String sql = "update store_ssada_tbl set store_nm = ? where store_cd=?";
	PreparedStatement  pst =con.prepareStatement(sql);
	
	pst.setString(1, store_nm);
	pst.setString(2, store_addr);
	pst.setString(3, store_tel);
	pst.setString(4, store_img);
	pst.setString(5, store_cd);
	int cnt  =pst.executeUpdate();
    
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


response.sendRedirect("lookupMain.jsp");

%>
