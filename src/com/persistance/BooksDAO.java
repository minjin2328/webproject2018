package com.persistance;

import java.util.*;
import com.domain.Books;

//교재(books) 데이터베이스 저장소 운영 클래스
public interface BooksDAO {

	// 교재 입력메소드
	public int insert(Books b);

	// 교재 출력메소드1
	// 교재아이디 | 교재명 | 출판사명
	public List<Books> print1(Books b);

	// 교재 출력메소드2
	// 교재아이디 | 교재명 | 출판사명 | 삭제가능여부
	public List<Books> print2(Books b);
	
	// 교재 출력메소드3
	// 교재아이디 | 교재명
	public List<Books> print3(Books b);

	// 교재 삭제메소드
	public int remove(Books b);

}
