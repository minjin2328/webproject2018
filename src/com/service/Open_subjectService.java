package com.service;

import java.util.List;

import com.domain.Open_subject;

//��������(Open_subject) �����ͺ��̽� ����� � Ŭ����
public interface Open_subjectService {

	// ���� ���� ��� �޼ҵ�(1)
	// �������̵� | ����� | ��������� | ����������
    public List<Open_subject> print1(String teacher_id);

    // ���� ���� ��� �޼ҵ�(2)
	// ���������ȣ | ����� | ��������� | ���������� | ���������� | ���������� | ���������� | ���ǽ� | �������࿩��
    public List<Open_subject> print2();

    // ���� ���� ��� �޼ҵ�(3)
	// ������̵� | �����
    public List<Open_subject> print3();

    // ���� ���� ��� �޼ҵ�(4)
	// ������̵� | ����� | ��������� | ���������� | ����
    public List<Open_subject> print4();
    
    // ���� ���� ��� �޼ҵ�(5)
	// ������̵� | ����� | ��������� | ���������� | ����    | �������ɿ���
    public List<Open_subject> print5();
    
    // ���� ���� ��� �޼ҵ�(6)
    // ���� �����ȣ |  ����� | ��������� | ����������  | �����
    public List<Open_subject> print6();
    
    // ���� ���� ��� �޼ҵ�(7)
    // ������̵� | ����� | ��������� | ���������� | ����� | ����� | ������ | ���������� | ���������� | ���ǽ�
    public List<Open_subject> print7();
    
    // ���� ���� ��� �޼ҵ�(8)
    // ���� �����ȣ |  ����� | ��������� | ����������  | ����� | �����
    public List<Open_subject> print8();
       
    // ������ > 3.������ ���� �޴� > 4)���� ���� ���� *
    // 1)���� ���� �Է� (�߰� �޼ҵ�)
    public int insert(Open_subject os);
    
    // 2)���� ���� �˻� �� ��� (�˻� �޼ҵ�)
    public List<Open_subject> search(String key, String value);
    
    // 3)���� ���� ���� (���� �޼ҵ�)
    public int remove(Open_subject os);
	
}
