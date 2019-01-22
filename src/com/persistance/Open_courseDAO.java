package com.persistance;

import java.util.List;

import com.domain.Open_course;

//개설과정(open_course) 데이터베이스 저장소 운영 클래스
public interface Open_courseDAO {

	// 개설 과정 추가 메소드
	public int insert(Open_course oc);

	// 개설 과정 출력 메소드(1)
	// 과정아이디 | 과정명 | 과정시작일 | 과정종료일 | 강의실 | 수료/중도탈락 | 수료/중도탈락날짜
	public List<Open_course> print1();

	// 개설 과정 출력 메소드(2)
	// 과정아이디 | 과정명 | 과정시작일 | 과정종료일 | 강의실 | 진행상태| 개설과목개수
	public List<Open_course> print2(String value);
	
	// 개설 과정 출력/검색 메소드(3)
	// 과정아이디 | 과정명 | 과정시작일 | 과정종료일 | 강의실 | 진행상태 | 수강인원
	public List<Open_course> print3(String opencourse, String teacher_id);
	public List<Open_course> print3(String key, String value, String opencourse, String teacher_id);
	public List<Open_course> print3_2(String teacher_id);
	public List<Open_course> print3_2(String key, String value, String teacher_id);
	
	// 개설 과정 출력 메소드(4)
	// 과정아이디 | 과정명 | 과정시작일 | 과정종료일 | 강의실 | 수료/중도탈락 | 수료/중도탈락날짜
	public List<Open_course> print4();
	
	// 개설 과정 출력 메소드(5)
	// 과정아이디 | 과정명 | 과정시작일 | 과정종료일 | 강의실 | 진행상태
	public List<Open_course> print5();

	// 개설 과정 출력 메소드(6)
	// 과정아이디 | 과정명 | 과정시작일 | 과정종료일 | 강의실 | 진행상태 | 등록인원
	public List<Open_course> print6();

	// 개설 과정 출력 메소드(7)
	// 과정아이디 | 과정명 | 과정시작일 | 과정종료일 | 삭제가능여부
	public List<Open_course> print7();

	// 개설 과정 검색 메소드
	// 1.검색할 개설과정아이디 2. 과정명
	public List<Open_course> search(String key, String value);

	// 개설 과정 삭제 메소드
	public int remove(Open_course oc);
	
}