package com.service;

import java.util.List;

import com.domain.Students;

//������(students) �����ͺ��̽� ����� � Ŭ����
public interface StudentsService {

	// ������ �α��� �޼ҵ�
	public String login(Students s);

	// ������ �߰� �޼ҵ�
	public int insert(Students s);

	// ������ �����丮 �߰� �޼ҵ�
	public int courseHistoryAdd(Students s);

	// ������ ��� �޼ҵ�(1) - ������ ��������
	// ���������̵� | �������� | ��������ȭ��ȣ | �����������
	public List<Students> print1();

	// ������ ��� �޼ҵ�(2) - ������ ��������
	// ���������̵� | �������� | ��������ȭ��ȣ | ����������� | ����Ƚ��
	public List<Students> print2();

	// ������ ��� �޼ҵ�(3) - ������ �ߵ�Ż����ȸ
	// �������� | ��������ȭ��ȣ | ��������� | ����/�ߵ�Ż�� | ����/�ߵ�Ż����¥
	public List<Students> print3(String openCourse_id, String teacher_id, String pageStart);
	public List<Students> print3(String key, String value, String openCourse_id, String teacher_id, String pageStart);
	
	// ������ ��� �޼ҵ�(4) - ������ ���� ��ȸ
	// ���������̵� | �������� | ������� | �ʱ����� | �Ǳ����� | ����
	public List<Students> print4();

	// ������ �˻� �޼ҵ�
	// 1. ���������̵� 2. ��������
	public List<Students> search(String key, String value);

	// ������ ���� �޼ҵ�
	public int remove(Students s);

	// ������ ��й�ȣ ���� �޼ҵ�
	public int modify(Students s);

	// ������ ��й�ȣ �ʱ�ȭ �޼ҵ�
	public int reset(Students s);

	// ������ �����丮 ���� �޼ҵ�
	public int courseHistoryRemove(Students s);

	// ������ �ߵ� Ż�� �߰� �޼ҵ�
	public int completionCourseAdd(Students s);

	// totalCount
	public int totalcount(String key, String value);
	
	//�ο���
	public List<Students> dash(String teacher_id);
	// ���� ������
	public int dash2(String teacher_id);

}
