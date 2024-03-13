package day6;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//책정보 여러개를 응답하는 서비스 만들기
//응답을 처리하는 서블릿, 화면을 보여주는 뷰, 책 정보 여러개(클래스->서비스 클래스)
@WebServlet("/Prac12")
public class Prac12 extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//처리	
		Prac12Service service=new Prac12Service();
		ArrayList<Book> list = service.getBookList();
		
		System.out.println(list.size());
		//응답
		
		//Model 모델 심기
		request.setAttribute("list",list);
		
		//view forward
		request.getRequestDispatcher("WEB-INF/views/booklist.jsp").forward(request,response);
	}	

}
