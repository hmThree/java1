package day2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/prac4")
public class Prac4  extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		 
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out  = response.getWriter();
		
		//책정보		
		Book  book = new Book( "고구려1 도망자 을불" ,"김진명" ,15000);
		
		//응답
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");	
		out.println("<body>");		
		out.println(book);	
		out.println("</body>");
		out.println("</html>");
		 
		out.close();
		
		
		
	}
}
