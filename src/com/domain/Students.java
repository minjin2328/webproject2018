package com.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

//������(students) ���� Ŭ����
/**
 * @author sist
 *
 */
public class Students {

	private String student_id; // ���������̵�
	private String student_name; // ��������
	private String student_phone; // ��������ȭ��ȣ
	private String student_pw; // ��������й�ȣ
	private Date student_regDate; // �����������
	private int student_attendance; // ����Ƚ��
	private String completion_status; // ���Ῡ��(���� ����, ���� �Ϸ�, �ߵ� Ż��)
	private int completion_status1; // ������ �ο���
	private int completion_status2; // �ߵ�Ż�� �ο���
	private int completion_status3; // ����Ϸ� �ο���
	private int course_date; //���� ������
	private Date completeion_date; // ����/�ߵ�Ż����¥
	private String openCourse_id; // ����������̵�
	private String student_picture_id; // �������������̵�
	private String student_picture_name; // �����������̸�
	private MultipartFile student_picture; // ��������������

	// getter, setter
	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getStudent_phone() {
		return student_phone;
	}

	public void setStudent_phone(String student_phone) {
		this.student_phone = student_phone;
	}

	public String getStudent_pw() {
		return student_pw;
	}

	public void setStudent_pw(String student_pw) {
		this.student_pw = student_pw;
	}

	public Date getStudent_regDate() {
		return student_regDate;
	}

	public void setStudent_regDate(Date student_regDate) {
		this.student_regDate = student_regDate;
	}

	public int getStudent_attendance() {
		return student_attendance;
	}

	public void setStudent_attendance(int student_attendance) {
		this.student_attendance = student_attendance;
	}

	public String getCompletion_status() {
		return completion_status;
	}

	public void setCompletion_status(String completion_status) {
		this.completion_status = completion_status;
	}

	public int getCompletion_status1() {
		return completion_status1;
	}

	public void setCompletion_status1(int completion_status1) {
		this.completion_status1 = completion_status1;
	}

	public int getCompletion_status2() {
		return completion_status2;
	}

	public void setCompletion_status2(int completion_status2) {
		this.completion_status2 = completion_status2;
	}

	public int getCompletion_status3() {
		return completion_status3;
	}

	public void setCompletion_status3(int completion_status3) {
		this.completion_status3 = completion_status3;
	}

	public int getCourse_date() {
		return course_date;
	}

	public void setCourse_date(int course_date) {
		this.course_date = course_date;
	}

	public Date getCompleteion_date() {
		return completeion_date;
	}

	public void setCompleteion_date(Date completeion_date) {
		this.completeion_date = completeion_date;
	}

	public String getOpenCourse_id() {
		return openCourse_id;
	}

	public void setOpenCourse_id(String openCourse_id) {
		this.openCourse_id = openCourse_id;
	}

	public String getStudent_picture_id() {
		return student_picture_id;
	}

	public void setStudent_picture_id(String student_picture_id) {
		this.student_picture_id = student_picture_id;
	}

	public String getStudent_picture_name() {
		return student_picture_name;
	}

	public void setStudent_picture_name(String student_picture_name) {
		this.student_picture_name = student_picture_name;
	}

	public MultipartFile getStudent_picture() {
		return student_picture;
	}

	public void setStudent_picture(MultipartFile student_picture) {
		this.student_picture = student_picture;
	}

}