package com.domain;

//���ǰ��ɰ���(available_subjects) ���� Ŭ����
public class Available_subjects {

	private String teacher_id, subject_id;		// ������̵�, ������̵�
	private String subject_name;        // ���� �̸�

	// getter, setter
	public String getTeacher_id() {
		return teacher_id;
	}

	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
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

}
