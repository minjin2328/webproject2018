package com.domain;

//���ǽ�(classrooms) ���� Ŭ����
public class Classrooms {

	// ���ǽǾ��̵�, ���ǽǸ�, �����ο�
	private String classRoom_id, classRoom_name;
	private int max_persons;

	// getter, setter
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

	public int getMax_persons() {
		return max_persons;
	}

	public void setMax_persons(int max_persons) {
		this.max_persons = max_persons;
	}

}
