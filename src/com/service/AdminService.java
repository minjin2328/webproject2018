package com.service;

import com.domain.Admin;

//������(Admin) �����ͺ��̽� ����� � Ŭ����
public interface AdminService {

	// ������ �α��� �޼ҵ�
	public int login(Admin a);


	// ������ �н����� ���� �޼ҵ�
	public int Modify(Admin a);
	
}
