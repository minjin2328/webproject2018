package com.service;

import java.util.*;

import com.domain.Classrooms;

//���ǽ�(classrooms) �����ͺ��̽� ����� � Ŭ����
public interface ClassroomsService {

	// ���ǽ� �Է¸޼ҵ�
	public int insert(Classrooms cr);

	// ���ǽ� ��¸޼ҵ�1
	// ���ǽǾ��̵� | ���ǽǸ� | �ִ�����
	public List<Classrooms> print1(Classrooms cr);

	// ���ǽ� ��¸޼ҵ�2
	// ���ǽǾ��̵� | ���ǽǸ� | ���� | �������ɿ���
	public List<Classrooms> print2(Classrooms cr);

	// ���ǽ� �����޼ҵ�
	public int remove(Classrooms cr);
	
}
