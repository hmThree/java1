package day6;

import java.util.ArrayList;

public class Prac12Service {
	
	public ArrayList<Book> getBookList(){
		
		ArrayList<Book> list = new ArrayList<>();
		list.add(new Book("뇌","베르나르",9000));
		list.add(new Book("시","가나다르",9000));
		list.add(new Book("그","라마바르",9000));
		
		return list;
	}

}
