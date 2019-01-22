package com.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

//����(exams) + ����(Subject_score) ���� Ŭ����
public class Exams {

	private String exam_id, exam_file_name, openSubject_id, subjectPoints_id, subject_id, subject_name, book_name, isbn,
			student_id, student_name, student_phone, completion, stop_date; // ������̵�, ���蹮�����ϸ�, ����������̵�, ����������̵� , ������̵�,
	// ����� , ���� , isbn,���������̵� , �������� , ��ȭ��ȣ, ����/�ߵ�Ż��, ����/�ߵ�Ż����¥
	private MultipartFile exam_file;	//���蹮������
	private Date exam_date, start_openSubject, end_openSubject; // ���賯¥, ���������, ����������
	private int attendance_points, written_points, practice_points, attendance_score, written_score, practice_score,
			count_, total_score, examCount, gradeCount; // ������̵�, ������, �ʱ����, �Ǳ����, ��������ο���, ����, �����ϰ���, ��������ο���
	private String student_picture_name; // �����������̸�
	
	// getter, setter
	public String getStudent_picture_name() {
		return student_picture_name;
	}

	public void setStudent_picture_name(String student_picture_name) {
		this.student_picture_name = student_picture_name;
	}
	
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

	public String getCompletion() {
		return completion;
	}

	public void setCompletion(String completion) {
		this.completion = completion;
	}

	public String getStop_date() {
		return stop_date;
	}

	public void setStop_date(String stop_date) {
		this.stop_date = stop_date;
	}

	public int getAttendance_score() {
		return attendance_score;
	}

	public void setAttendance_score(int attendance_score) {
		this.attendance_score = attendance_score;
	}

	public int getWritten_score() {
		return written_score;
	}

	public void setWritten_score(int written_score) {
		this.written_score = written_score;
	}

	public int getPractice_score() {
		return practice_score;
	}

	public void setPractice_score(int practice_score) {
		this.practice_score = practice_score;
	}
	
	public int getTotal_score() {
		return total_score;
	}

	public void setTotal_score(int total_score) {
		this.total_score = total_score;
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

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
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
	public int getCount_() {
		return count_;
	}
	public void setCount_(int count_) {
		this.count_ = count_;
	}
	public String getExam_id() {
		return exam_id;
	}

	public void setExam_id(String exam_id) {
		this.exam_id = exam_id;
	}

	public String getExam_file_name() {
		return exam_file_name;
	}

	public void setExam_file_name(String exam_file_name) {
		this.exam_file_name = exam_file_name;
	}

	public String getOpenSubject_id() {
		return openSubject_id;
	}

	public void setOpenSubject_id(String openSubject_id) {
		this.openSubject_id = openSubject_id;
	}

	public Date getExam_date() {
		return exam_date;
	}

	public void setExam_date(Date exam_date) {
		this.exam_date = exam_date;
	}

	public String getSubjectPoints_id() {
		return subjectPoints_id;
	}

	public void setSubjectPoints_id(String subjectPoints_id) {
		this.subjectPoints_id = subjectPoints_id;
	}

	public int getAttendance_points() {
		return attendance_points;
	}

	public void setAttendance_points(int attendance_points) {
		this.attendance_points = attendance_points;
	}

	public int getWritten_points() {
		return written_points;
	}

	public void setWritten_points(int written_points) {
		this.written_points = written_points;
	}

	public int getPractice_points() {
		return practice_points;
	}

	public void setPractice_points(int practice_points) {
		this.practice_points = practice_points;
	}
	
	public int getExamCount() {
		return examCount;
	}

	public void setExamCount(int examCount) {
		this.examCount = examCount;
	}
	
	public int getGradeCount() {
		return gradeCount;
	}

	public void setGradeCount(int gradeCount) {
		this.gradeCount = gradeCount;
	}

	public MultipartFile getExam_file() {
		return exam_file;
	}

	public void setExam_file(MultipartFile exam_file) {
		this.exam_file = exam_file;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
}
