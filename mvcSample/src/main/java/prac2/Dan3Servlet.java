package prac2;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/dan3")
public class Dan3Servlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 		
		
		//3단 제공		
		DanService  service  = new DanService();
		
		String  result1 = service.dan3Ver1();
		String[] result2 = service.dan3Ver2();	
 
		
		//저장소에 저장하기
		request.setAttribute("danv1", result1);
		request.setAttribute("danv2", result2);
		
		//forword하기
		request.getRequestDispatcher("WEB-INF/views/dan3.jsp").forward(request, response);
		
		
	}

}
