package com.domain;

import java.sql.Date;

//개설과정(open_subject) 정보 클래스
public class Open_subject {

	//개설과목 아이디, 과목아이디, 과목명, 교재아이디, 교재명
	//, 개설과정 아이디, 개설과정명, 강의실 아이디, 강의실명, 강의진행여부, 수강기간
	private String openSubject_id, subject_id, subject_name, book_id, book_name
		, openCourse_id, course_name, classRoom_id, classRoom_name, openSubject_status, period;
	//과목 시작일, 과목 종료일, 과정 시작일, 과정 종료일
	private Date start_openSubject, end_openSubject, start_openCourse, end_openCourse;

	//삭제가능여부
	private int count_;

	// getter, setter
	public String getOpenSubject_id() {
		return openSubject_id;
	}
	public void setOpenSubject_id(String openSubject_id) {
		this.openSubject_id = openSubject_id;
	}
	public String getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(String subject_id) {
		this.subject_id = subject_id;
	}
	public String getSubject_name() {
		return subject_name;
	}
	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}
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
	public String getOpenCourse_id() {
		return openCourse_id;
	}
	public void setOpenCourse_id(String openCourse_id) {
		this.openCourse_id = openCourse_id;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getClassRoom_id() {
		return classRoom_id;
	}
	public void setClassRoom_id(String classRoom_id) {
		this.classRoom_id = classRoom_id;
	}
	public String getClassRoom_name() {
		return classRoom_name;
	}
	public void setClassRoom_name(String classRomm_name) {
		this.classRoom_name = classRomm_name;
	}
	public String getOpenSubject_status() {
		return openSubject_status;
	}
	public void setOpenSubject_status(String openSubject_status) {
		this.openSubject_status = openSubject_status;
	}
	public Date getStart_openSubject() {
		return start_openSubject;
	}
	public void setStart_openSubject(Date start_openSubject) {
		this.start_openSubject = start_openSubject;
	}
	public Date getEnd_openSubject() {
		return end_openSubject;
	}
	public void setEnd_openSubject(Date end_openSubject) {
		this.end_openSubject = end_openSubject;
	}
	public Date getStart_openCourse() {
		return start_openCourse;
	}
	public void setStart_openCourse(Date start_openCourse) {
		this.start_openCourse = start_openCourse;
	}
	public Date getEnd_openCourse() {
		return end_openCourse;
	}
	public void setEnd_openCourse(Date end_openCourse) {
		this.end_openCourse = end_openCourse;
	}
	public int getCount_() {
		return count_;
	}
	public void setCount_(int count_) {
		this.count_ = count_;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}

}
