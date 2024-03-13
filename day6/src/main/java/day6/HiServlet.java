package day6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/hi")
public class HiServlet  extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		PrintWriter  out  =response.getWriter();
		
		
		//처리
		// 인사 메시지 =>데이터
		String  msg="hi Servlet";		
				
		
		//출력
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<h2>"+ msg +"<h2>");
		out.println("<body>");
		out.println("</body>");
		out.println("</html>");
		
		
		
	}
}
