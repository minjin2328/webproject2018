package com.persistance;

import java.util.List;

import com.domain.Courses;

public interface CoursesDAO {

	//�ڽ� ��� �޼ҵ�(1)
	//�������̵�  |  ������
	public List<Courses> print1();
	//�ڽ� ��� �޼ҵ�(2)
	//�������̵�  |  ������   | �������ɿ���

	public List<Courses> print2();

}



