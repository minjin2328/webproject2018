package com.domain;

import java.util.Date;

//�ڷ��� Ŭ���� ����
public class Teachers {

	private String teacher_id; // ���� ���̵�
	private String teacher_name; // �����
	private String teacher_phone; // ���� ��ȭ��ȣ
	private String teacher_pw; // ���� �н�����
	
	public String getTeacher_newPw() {
		return teacher_newPw;
	}
	public void setTeacher_newPw(String teacher_newPw) {
		this.teacher_newPw = teacher_newPw;
	}

	private String teacher_newPw; // ���� �н�����
	private String subject_id; // ���� ���ɰ��� ���̵�
	private String subject_name; // ���� ���ɰ����
	private Date teacher_regDate; // ���� �����
	private int count_; // ���� �������ɿ���
	private String teacher_picture_id; //����������̵�

	// getter ,setter
	public Date getTeacher_regDate() {
		return teacher_regDate;
	}

	public void setTeacher_regDate(Date teacher_regDate) {
		this.teacher_regDate = teacher_regDate;
	}

	public String getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}

	public String getTeacher_name() {
		return teacher_name;
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

	public int getCount_() {
		return count_;
	}

	public void setCount_(int count_) {
		this.count_ = count_;
	}

	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}

	public String getTeacher_phone() {
		return teacher_phone;
	}

	public void setTeacher_phone(String teacher_phone) {
		this.teacher_phone = teacher_phone;
	}

	public String getTeacher_pw() {
		return teacher_pw;
	}

	public void setTeacher_pw(String teacher_pw) {
		this.teacher_pw = teacher_pw;
	}
	
	public String getTeacher_picture_id() {
		return teacher_picture_id;
	}

	public void setTeacher_picture_id(String teacher_picture_id) {
		this.teacher_picture_id = teacher_picture_id;
	}

}