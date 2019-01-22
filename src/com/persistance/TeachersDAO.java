package com.persistance;

import java.util.List;

import com.domain.Teachers;

//자료형 클래스 선언
public interface TeachersDAO {
	
	// 강사 로그인 메소드
	public String login(Teachers t);

	// 강사 추가 메소드
	public int insert(Teachers t);

	// 강사 출력 메소드(1)
	// 강사명 | 전화번호 | 등록일
	public List<Teachers> print1(String teacher_id);

	// 강사 출력 메소드(2)
	// 강사아이디 | 강사명 | 전화번호 | 강의 가능 과목 | 등록일
	public List<Teachers> print2();

	// 강사 출력 메소드(3)
	// 강사아이디 | 강사명 | 강의가능과목명
	public List<Teachers> print3();

	// 강사 검색 메소드
	// 강사아이디 or 강사명
	public List<Teachers> search(String key, String value);

	// 강사 삭제 메소드
	public int remove(Teachers t);

	// 강사 비밀번호 변경 메소드
	public int modify(Teachers t);

	// 강사 비밀번호 초기화 메소드
    public int reset(Teachers t);
    
}
