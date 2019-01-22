package com.persistance;

import java.util.List;

import com.domain.Open_course;

//��������(open_course) �����ͺ��̽� ����� � Ŭ����
public interface Open_courseDAO {

	// ���� ���� �߰� �޼ҵ�
	public int insert(Open_course oc);

	// ���� ���� ��� �޼ҵ�(1)
	// �������̵� | ������ | ���������� | ���������� | ���ǽ� | ����/�ߵ�Ż�� | ����/�ߵ�Ż����¥
	public List<Open_course> print1();

	// ���� ���� ��� �޼ҵ�(2)
	// �������̵� | ������ | ���������� | ���������� | ���ǽ� | �������| �������񰳼�
	public List<Open_course> print2(String value);
	
	// ���� ���� ���/�˻� �޼ҵ�(3)
	// �������̵� | ������ | ���������� | ���������� | ���ǽ� | ������� | �����ο�
	public List<Open_course> print3(String opencourse, String teacher_id);
	public List<Open_course> print3(String key, String value, String opencourse, String teacher_id);
	public List<Open_course> print3_2(String teacher_id);
	public List<Open_course> print3_2(String key, String value, String teacher_id);
	
	// ���� ���� ��� �޼ҵ�(4)
	// �������̵� | ������ | ���������� | ���������� | ���ǽ� | ����/�ߵ�Ż�� | ����/�ߵ�Ż����¥
	public List<Open_course> print4();
	
	// ���� ���� ��� �޼ҵ�(5)
	// �������̵� | ������ | ���������� | ���������� | ���ǽ� | �������
	public List<Open_course> print5();

	// ���� ���� ��� �޼ҵ�(6)
	// �������̵� | ������ | ���������� | ���������� | ���ǽ� | ������� | ����ο�
	public List<Open_course> print6();

	// ���� ���� ��� �޼ҵ�(7)
	// �������̵� | ������ | ���������� | ���������� | �������ɿ���
	public List<Open_course> print7();

	// ���� ���� �˻� �޼ҵ�
	// 1.�˻��� �����������̵� 2. ������
	public List<Open_course> search(String key, String value);

	// ���� ���� ���� �޼ҵ�
	public int remove(Open_course oc);
	
}