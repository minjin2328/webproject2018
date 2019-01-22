package com.persistance;

import com.domain.Admin;
import com.domain.Login;
import com.domain.Students;
import com.domain.Teachers;

public interface LoginDAO {
	
	//������ �α��� �޼ҵ�
	public Students studentLogin(Login login);
	
	//���� �α��� �޼ҵ�
	public Teachers teacherLogin(Login login);

	//������ �α��� �޼ҵ�
	public Admin adminLogin(Login login);

}
