package com.service;

import java.util.List;

import com.domain.Exams;

public interface ExamsService {

	// ���� ��¸޼ҵ�1
	// ������̵� | �����
	public List<Exams> print1();

	// ���� ��¸޼ҵ�2
	// ������̵� | ����� | ��������� | ���������� | ���� | ������ | �ʱ���� | �Ǳ���� | ���賯¥ | ���蹮��
	// ������̵� | ����� | ��������� | ���������� | ���� | ������ | �ʱ���� | �Ǳ���� | ���賯¥ | ��������ο���
	public List<Exams> print2(String openCourse_id, String teacher_id);
	public List<Exams> print2(String key, String value, String openCourse_id, String teacher_id);
	public List<Exams> print2(String key, String value, String openCourse_id, String exam_id, String teacher_id);

	// ���� ��¸޼ҵ�4
	// ������ | �ʱ���� | �Ǳ����
	public List<Exams> print4();

	// ���� ��¸޼ҵ�5
	// ���������̵� | �������� | ��ȭ��ȣ | ����/�ߵ�Ż�� | ����/�ߵ�Ż����¥ | ������� | �ʱ����� | �Ǳ����� | ���� | ���賯¥
	public List<Exams> print5(String openCourse_id, String openSubject_id, String exam_id, String teacher_id);
	public List<Exams> print5(String key, String value, String openCourse_id, String openSubject_id, String exam_id, String teacher_id);

	// ��� �޼ҵ�6 - ������ 2
	// ���������̵� | �������� | ��������ȭ��ȣ | ������� | �ʱ����� | �Ǳ����� | ���� | ���賯¥
	public List<Exams> print6();

	// ��� �޼ҵ�7 - ����
	// ���������̵� | �������� | ��������ȭ��ȣ | ����/�ߵ�Ż�� | ����/�ߵ�Ż����¥ | ������� | �ʱ����� | �Ǳ����� | ���� |
	// ���賯¥
	public List<Exams> print7();
	
	// ���� ��¸޼ҵ�8 - ������
	// ������̵� | ����� | ��������� | ���������� | ���� | ������ | �ʱ���� | �Ǳ���� | ������� | �ʱ����� | �Ǳ����� | ���賯¥ | ���蹮��
	public List<Exams> print8();
	
	// ���� ��¸޼ҵ�9 - ������ȸ
	// ����������̵�/�����/�����/�����/������/�ʱ����/�Ǳ����/���賯¥/��������/��������ο�
	public List<Exams> print9();
	
	// ���� ��¸޼ҵ�9 - ������ȸ
	// ����������̵�/�����/���������/����������/�����/�������/������/�ʱ�����/�ʱ����/�Ǳ�����/�Ǳ����/����/���賯¥
	public List<Exams> print10();
	
	//��ü �Է� ����
	public String select_examId(Exams e);
		
	// ����, ���� �Է� �޼ҵ�
	public int insert(Exams e);

	// ���� ���� ���� �޼ҵ�
	public int removePoint(Exams e);
	
	// ����, ���� ���� �޼ҵ�
	public int update(Exams e);

	// ���� ���� �Է� �޼ҵ�
	public int insertScore(Exams e);

	// ���� ���� ���� �޼ҵ�
	public int removeScore(Exams e);
	
	// ���� ���� ���� �޼ҵ�
	public int updateScore(Exams e);
	
	// ���� �����޼ҵ�
	public int remove(String exam_id);
	
}
