package com.domain;

import java.sql.Date;

//개설과정(open_course) 정보 클래스
public class Open_course {

	private String openCourse_id, course_id, course_name, classRoom_id, classRoom_name, opencourse;	// 개설과정아이디, 과정아이디, 과정명, 강의실, 강의실명, 강의상태
	private Date start_openCourse, end_openCourse, stop_date;	//  과정시작일, 과정종료일, 수료/중도탈락날짜
	private String completion;	// 진행상태
	private int student_count, remove_count, opensubject_count;	// 등록인원, 삭제가능여부, 개설과목개수

	public String getOpenCourse_id() {
		return openCourse_id;
	}

	public void setOpenCourse_id(String openCourse_id) {
		this.openCourse_id = openCourse_id;
	}
	
	public String getCourse_id() {
		return course_id;
	}

	public void setCourse_id(String course_id) {
		this.course_id = course_id;
	}

	public String getOpencourse() {
		return opencourse;
	}

	public void setOpencourse(String opencourse) {
		this.opencourse = opencourse;
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

	public void setClassRoom_name(String classRoom_name) {
		this.classRoom_name = classRoom_name;
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

	public Date getStop_date() {
		return stop_date;
	}

	public void setStop_date(Date stop_date) {
		this.stop_date = stop_date;
	}

	public String getCompletion() {
		return completion;
	}

	public void setCompletion(String completion) {
		this.completion = completion;
	}

	public int getStudent_count() {
		return student_count;
	}

	public void setStudent_count(int student_count) {
		this.student_count = student_count;
	}

	public int getRemove_count() {
		return remove_count;
	}

	public void setRemove_count(int remove_count) {
		this.remove_count = remove_count;
	}

	public int getOpensubject_count() {
		return opensubject_count;
	}

	public void setOpensubject_count(int opensubject_count) {
		this.opensubject_count = opensubject_count;
	}
}
