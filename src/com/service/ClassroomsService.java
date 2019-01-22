package com.service;

import java.util.*;

import com.domain.Classrooms;

//강의실(classrooms) 데이터베이스 저장소 운영 클래스
public interface ClassroomsService {

	// 강의실 입력메소드
	public int insert(Classrooms cr);

	// 강의실 출력메소드1
	// 강의실아이디 | 강의실명 | 최대정원
	public List<Classrooms> print1(Classrooms cr);

	// 강의실 출력메소드2
	// 강의실아이디 | 강의실명 | 정원 | 삭제가능여부
	public List<Classrooms> print2(Classrooms cr);

	// 강의실 삭제메소드
	public int remove(Classrooms cr);
	
}
