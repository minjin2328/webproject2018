package com.service;

import com.domain.Admin;
import com.domain.Login;
import com.domain.Students;
import com.domain.Teachers;

public interface LoginService {
	
	//수강생 로그인 메소드
	public Students studentLogin(Login login);
	
	//강사 로그인 메소드
	public Teachers teacherLogin(Login login);

	//관리자 로그인 메소드
	public Admin adminLogin(Login login);

}
