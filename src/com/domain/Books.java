package com.domain;

//교재(books) 정보 클래스
public class Books {

	// 교재아이디, 교재이름, isbn
	private String book_id, book_name, isbn;

	// getter, setter
	public String getBook_id() {
		return book_id;
	}

	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

}
