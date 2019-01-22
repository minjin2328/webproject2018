package com.service;

import java.util.List;

import com.domain.Exams;

public interface ExamsService {

	// 시험 출력메소드1
	// 과목아이디 | 과목명
	public List<Exams> print1();

	// 시험 출력메소드2
	// 과목아이디 | 과목명 | 과목시작일 | 과목종료일 | 교재 | 출결배점 | 필기배점 | 실기배점 | 시험날짜 | 시험문제
	// 과목아이디 | 과목명 | 과목시작일 | 과목종료일 | 교재 | 출결배점 | 필기배점 | 실기배점 | 시험날짜 | 성적등록인원수
	public List<Exams> print2(String openCourse_id, String teacher_id);
	public List<Exams> print2(String key, String value, String openCourse_id, String teacher_id);
	public List<Exams> print2(String key, String value, String openCourse_id, String exam_id, String teacher_id);

	// 시험 출력메소드4
	// 출결배점 | 필기배점 | 실기배점
	public List<Exams> print4();

	// 시험 출력메소드5
	// 수강생아이디 | 수강생명 | 전화번호 | 수료/중도탈락 | 수료/중도탈락날짜 | 출결점수 | 필기점수 | 실기점수 | 총점 | 시험날짜
	public List<Exams> print5(String openCourse_id, String openSubject_id, String exam_id, String teacher_id);
	public List<Exams> print5(String key, String value, String openCourse_id, String openSubject_id, String exam_id, String teacher_id);

	// 출력 메소드6 - 관리자 2
	// 수강생아이디 | 수강생명 | 수강생전화번호 | 출결점수 | 필기점수 | 실기점수 | 총점 | 시험날짜
	public List<Exams> print6();

	// 출력 메소드7 - 강사
	// 수강생아이디 | 수강생명 | 수강생전화번호 | 수료/중도탈락 | 수료/중도탈락날짜 | 출결점수 | 필기점수 | 실기점수 | 총점 |
	// 시험날짜
	public List<Exams> print7();
	
	// 시험 출력메소드8 - 수강생
	// 과목아이디 | 과목명 | 과목시작일 | 과목종료일 | 교재 | 출결배점 | 필기배점 | 실기배점 | 출결점수 | 필기점수 | 실기점수 | 시험날짜 | 시험문제
	public List<Exams> print8();
	
	// 시험 출력메소드9 - 성적조회
	// 개설과목아이디/과목명/강사명/교재명/출결배점/필기배점/실기배점/시험날짜/시험파일/성적등록인원
	public List<Exams> print9();
	
	// 시험 출력메소드9 - 성적조회
	// 개설과목아이디/과목명/과목시작일/과목종료일/강사명/출결점수/출결배점/필기점수/필기배점/실기점수/실기배점/총점/시험날짜
	public List<Exams> print10();
	
	//전체 입력 관리
	public String select_examId(Exams e);
		
	// 시험, 배점 입력 메소드
	public int insert(Exams e);

	// 시험 배점 삭제 메소드
	public int removePoint(Exams e);
	
	// 시험, 배점 수정 메소드
	public int update(Exams e);

	// 시험 성적 입력 메소드
	public int insertScore(Exams e);

	// 시험 성적 삭제 메소드
	public int removeScore(Exams e);
	
	// 시험 성적 수정 메소드
	public int updateScore(Exams e);
	
	// 시험 삭제메소드
	public int remove(String exam_id);
	
}
