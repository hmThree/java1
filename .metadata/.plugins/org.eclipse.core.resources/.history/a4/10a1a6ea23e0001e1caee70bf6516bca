package day6;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/prac4")
public class Prac4  extends  HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		
		
		//모델
		Prac4Service service = new Prac4Service();
		Book book =service.getBookInfo();
		
		
		//저장소에 모델 심기
		request.setAttribute("book", book);
		
		//view forward		
		request.getRequestDispatcher("WEB-INF/views/bookInfo.jsp").forward(request, response);
		
		
	}

}
