package day2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/prac4_2")
public class Prac4_2  extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 	
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out  = response.getWriter();
		
		//책정보		
		Book  book = new Book( "고구려1 도망자 을불" ,"김진명" ,15000);
		
		//응답
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>	"); 
		out.println("<style>");
		out.println("table{width:400px;border:1px solid black;margin:0 auto; } ");
		out.println("td{	border:1px solid black;	text-align:center;	} ");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>책제목</td> ");
		out.println("<td>저자</td> ");
		out.println("<td>가격</td> ");
		out.println("</tr> ");
		out.println("<tr> ");
		out.println("<td>" + book.getTitle()+"</td> ");
		out.println("<td>"+ book.getAuthor()+"</td> ");
		out.println("<td>"+ book.getPrice()+"</td> ");
		out.println("</tr>");
		out.println("</table> ");
		out.println("</body>");
		out.println("</html> ");		 
		out.close();
		
		
		
	}
}
