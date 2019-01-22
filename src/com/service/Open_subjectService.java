package com.service;

import java.util.List;

import com.domain.Open_subject;

//개설과목(Open_subject) 데이터베이스 저장소 운영 클래스
public interface Open_subjectService {

	// 개설 과목 출력 메소드(1)
	// 과정아이디 | 과목명 | 과목시작일 | 과목종료일
    public List<Open_subject> print1(String teacher_id);

    // 개설 과목 출력 메소드(2)
	// 개설과목번호 | 과목명 | 과목시작일 | 과목종료일 | 개설과정명 | 과정시작일 | 과정종료일 | 강의실 | 강의진행여부
    public List<Open_subject> print2();

    // 개설 과목 출력 메소드(3)
	// 과목아이디 | 과목명
    public List<Open_subject> print3();

    // 개설 과목 출력 메소드(4)
	// 과목아이디 | 과목명 | 과목시작일 | 과목종료일 | 교재
    public List<Open_subject> print4();
    
    // 개설 과목 출력 메소드(5)
	// 과목아이디 | 과목명 | 과목시작일 | 과목종료일 | 교재    | 삭제가능여부
    public List<Open_subject> print5();
    
    // 개설 과목 출력 메소드(6)
    // 개설 과목번호 |  과목명 | 과목시작일 | 과목종료일  | 교재명
    public List<Open_subject> print6();
    
    // 개설 과목 출력 메소드(7)
    // 과목아이디 | 과목명 | 과목시작일 | 과목종료일 | 교재명 | 강사명 | 과정명 | 과정시작일 | 과정종료일 | 강의실
    public List<Open_subject> print7();
    
    // 개설 과목 출력 메소드(8)
    // 개설 과목번호 |  과목명 | 과목시작일 | 과목종료일  | 강사명 | 교재명
    public List<Open_subject> print8();
       
    // 관리자 > 3.관리자 관리 메뉴 > 4)개설 과목 관리 *
    // 1)개설 과목 입력 (추가 메소드)
    public int insert(Open_subject os);
    
    // 2)개설 과목 검색 및 출력 (검색 메소드)
    public List<Open_subject> search(String key, String value);
    
    // 3)개설 과목 삭제 (삭제 메소드)
    public int remove(Open_subject os);
	
}
