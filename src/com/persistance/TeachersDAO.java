package com.persistance;

import java.util.List;

import com.domain.Teachers;

//�ڷ��� Ŭ���� ����
public interface TeachersDAO {
	
	// ���� �α��� �޼ҵ�
	public String login(Teachers t);

	// ���� �߰� �޼ҵ�
	public int insert(Teachers t);

	// ���� ��� �޼ҵ�(1)
	// ����� | ��ȭ��ȣ | �����
	public List<Teachers> print1(String teacher_id);

	// ���� ��� �޼ҵ�(2)
	// ������̵� | ����� | ��ȭ��ȣ | ���� ���� ���� | �����
	public List<Teachers> print2();

	// ���� ��� �޼ҵ�(3)
	// ������̵� | ����� | ���ǰ��ɰ����
	public List<Teachers> print3();

	// ���� �˻� �޼ҵ�
	// ������̵� or �����
	public List<Teachers> search(String key, String value);

	// ���� ���� �޼ҵ�
	public int remove(Teachers t);

	// ���� ��й�ȣ ���� �޼ҵ�
	public int modify(Teachers t);

	// ���� ��й�ȣ �ʱ�ȭ �޼ҵ�
    public int reset(Teachers t);
    
}
