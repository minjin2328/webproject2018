package com.persistance;

import com.domain.Admin;

//������(Admin) �����ͺ��̽� ����� � Ŭ����
public interface AdminDAO {

	// ������ �α��� �޼ҵ�
	public int login(Admin a);


	// ������ �н����� ���� �޼ҵ�
	public int Modify(Admin a);
	
}
