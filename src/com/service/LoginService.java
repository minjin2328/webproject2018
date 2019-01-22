package com.service;

import com.domain.Admin;
import com.domain.Login;
import com.domain.Students;
import com.domain.Teachers;

public interface LoginService {
	
	//������ �α��� �޼ҵ�
	public Students studentLogin(Login login);
	
	//���� �α��� �޼ҵ�
	public Teachers teacherLogin(Login login);

	//������ �α��� �޼ҵ�
	public Admin adminLogin(Login login);

}
