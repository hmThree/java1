package day2;

public class Book {
	
	String title;
	String author;
	int price;
	
	
	public Book(String title, String author, int price) {
		super();
		this.title = title;
		this.author = author;
		this.price = price;
	}
	
	
	public Book() {
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return "Book [title=" + title + ", author=" + author + ", price=" + price + "]";
	}


	public String getTitle() {
		return title;
	}


	public String getAuthor() {
		return author;
	}


	public int getPrice() {
		return price;
	}
	
	
	

}
