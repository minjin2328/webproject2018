package com.service;

import java.util.List;

import com.domain.Courses;

public interface CoursesService {

	//코스 출력 메소드(1)
	//과정아이디  |  과정명
	public List<Courses> print1();
	//코스 출력 메소드(2)
	//과정아이디  |  과정명   | 삭제가능여부

	public List<Courses> print2();

}



