package com.service;

import java.util.List;

import com.domain.Students;

//수강생(students) 데이터베이스 저장소 운영 클래스
public interface StudentsService {

	// 수강생 로그인 메소드
	public String login(Students s);

	// 수강생 추가 메소드
	public int insert(Students s);

	// 수강생 히스토리 추가 메소드
	public int courseHistoryAdd(Students s);

	// 수강생 출력 메소드(1) - 수강생 개인정보
	// 수강생아이디 | 수강생명 | 수강생전화번호 | 수강생등록일
	public List<Students> print1();

	// 수강생 출력 메소드(2) - 수강생 개인정보
	// 수강생아이디 | 수강생명 | 수강생전화번호 | 수강생등록일 | 수강횟수
	public List<Students> print2();

	// 수강생 출력 메소드(3) - 수강생 중도탈락조회
	// 수강생명 | 수강생전화번호 | 과정등록일 | 수료/중도탈락 | 수료/중도탈락날짜
	public List<Students> print3(String openCourse_id, String teacher_id, String pageStart);
	public List<Students> print3(String key, String value, String openCourse_id, String teacher_id, String pageStart);
	
	// 수강생 출력 메소드(4) - 수강생 성적 조회
	// 수강생아이디 | 수강생명 | 출결점수 | 필기점수 | 실기점수 | 총점
	public List<Students> print4();

	// 수강생 검색 메소드
	// 1. 수강생아이디 2. 수강생명
	public List<Students> search(String key, String value);

	// 수강생 삭제 메소드
	public int remove(Students s);

	// 수강생 비밀번호 수정 메소드
	public int modify(Students s);

	// 수강생 비밀번호 초기화 메소드
	public int reset(Students s);

	// 수강생 히스토리 삭제 메소드
	public int courseHistoryRemove(Students s);

	// 수강생 중도 탈락 추가 메소드
	public int completionCourseAdd(Students s);

	// totalCount
	public int totalcount(String key, String value);
	
	//인원수
	public List<Students> dash(String teacher_id);
	// 과정 진행율
	public int dash2(String teacher_id);

}
