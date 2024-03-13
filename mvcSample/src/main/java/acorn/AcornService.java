package acorn;

import java.util.ArrayList;

public class AcornService {
	
	AcornDAO dao = new AcornDAO();
	
	
	//에이콘학생명단
	public ArrayList<String>  getMemberList(){			
		ArrayList<String> list  = new ArrayList<>();
		
		list.add("강지훈");
		list.add("김기엽");
		list.add("김수진");	
		
		return list; 
	}	
	
	 
	
	public ArrayList<Customer> getMemberRealList (){	
		 ArrayList<Customer> list  =dao.selectAll();
		 return list;
		
	}
	 
	

}
