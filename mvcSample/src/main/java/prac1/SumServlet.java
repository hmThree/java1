package prac1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/hap")
public class SumServlet  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		  
		//사용자 입력 얻어오기
		String su1_ = request.getParameter("su1");
		String su2_ = request.getParameter("su2");
		
		
		//사용자입력 확인 하는 코드
		if( su1_ == null ||  su2_ == null) {
			// 값이 비어 있는 경우  prac1 페이지로 이동시킴
			response.sendRedirect("/mvcSample/prac1.html");
			return;
		}
		
		
	
		int su1 =  Integer.parseInt(su1_);
		int su2 =  Integer.parseInt(su2_);
		
		
		// 두 수를 더하는 로직을 따로 분리함 		
        HapService service = new HapService();
		int total =service.hap(su1, su2);
		
		System.out.println( total);
		
		//저장소에 model담기
		//request 저장소는 MVC2패턴에서 중요한 저장소로 사용됨 
		//서블릿에서 서블릿으로 얻어진 데이터를 jsp view와 공유하는 저장소 임 
		
		
		request.setAttribute("total", total); // request저장소로도 사용됨 , 하나의 요청이 공유할 수 있는 저장소 
		                                      // request저장소를 서블릿과 view jsp가 같이 공유함 
		//응답코드를 만드는 view로 forword
		request.getRequestDispatcher("WEB-INF/views/hap.jsp").forward(request, response);
		 
		
	}
}
