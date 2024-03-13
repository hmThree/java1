package day2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/getpost")
public class GetPost  extends HttpServlet {

	 // 부모의 service매서드의 역할 
	// 클라이언트의 요청 get, post에 대한  doGet()호출, doPost() 호출해줌

	
	//get요청으로 들어온것을 처리함 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		
		System.out.println("get 요청임");
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		//사용자의 아이디와 비번을 가져오기
		//
		//
		
		String id  =request.getParameter("userid"); // form 태그의 name값 대소문자구별
		String pw= request.getParameter("userpw");
		System.out.println( "post 요청임");
		
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out  =response.getWriter();
		out.println("당신의 아이디" +id );
		out.println("당신의 비밀번호" +pw);
		out.close();
		
	}

}
