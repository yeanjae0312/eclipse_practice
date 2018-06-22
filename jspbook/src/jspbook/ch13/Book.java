package jspbook.ch13;

/**
 * File : Book.java
 * Desc : Book 빈즈 클래스
 * @author 황희정(dinfree@dinfree.com)
 */
public class Book {
	// 멤버변수 선언
	private String title;
	private String author;
	private int price;
	private String publisher;
	
	// 기본 생성자, 파라미터로 데이터 초기화
	public Book(String title,String author, int price, String publisher) {
		this.title = title;
		this.author = author;
		this.price = price;
		this.publisher = publisher;
	}
	
	public String getAuthor() {
		return author;
	}

	public int getPrice() {
		return price;
	}

	public String getPublisher() {
		return publisher;
	}
	public String getTitle() {
		return title;
	}
}