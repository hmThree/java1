package day2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/prac6_3")
public class Prac6_3  extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out  =response.getWriter();		
		String num_  =request.getParameter("num");
		if( num_ == null) return;
		
		int num = Integer.parseInt( num_);		
		MyUtils  util = new MyUtils();
		String result  =util.getDivisor(num);
		out.println( result);		
		
	}
}
