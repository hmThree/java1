package day2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.util.Arrays;

@WebServlet("/prac6_2")
public class Prac6_2  extends HttpServlet{

	  @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		 
		  //	  
		 String num = request.getParameter("num");
		 if( num == null) {
			 return;
		 }	  
		 
		  
		  //int su=12;
		  int su  = Integer.parseInt( num);
		  int[] result = new int[20];
		  
		  // 1   2    3    4    5    6    7    8   9  10   12 
		  int index=0;
		  for( int i=1;i<= su; i++) {
			  if( su %i ==0) {
				   //약수발견
				  result[index]= i;
				  index++;
			  }
		  }	  
		  
		  String resultStr="";
		  for( int i=0; i< index; i++) {
			  resultStr += result[i] + "  ";
		  }		  
		  
		  PrintWriter out  = response.getWriter();
		  out.println(resultStr );		   
		  
		  
	}

}
