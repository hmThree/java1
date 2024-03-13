package day3;

import java.sql.*;

public class DBTEST {
	
	public static void main(String[] args) {
		
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:testdb";
		String user="scott";
		String password="tiger";
		
		
		try {
			Class.forName(driver);		//드라이버 로드(객체 생성)
			//2.데이터 베이스 연걸
			Connection con = DriverManager.getConnection(url,user,password);
			//3.문장 얻어오기
			Statement st = con.createStatement();
			//쿼리작성(developer에서)
			String sql = "select * from acorntbl";
			//실행 -> executeQuery() -> 조회용, executeUpdate(); -> 나머지 등록,변경,삭제
			ResultSet rs = st.executeQuery(sql);
			//
			while(rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
			}
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
