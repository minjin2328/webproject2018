package com.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Admin;
import com.domain.Login;
import com.domain.Students;
import com.domain.Teachers;
import com.persistance.LoginDAO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	
	@Resource(name="loginDAO")
	private LoginDAO loginDAO;

	@Override
	public Students studentLogin(Login login) {
		return null;
	}

	@Override
	public Teachers teacherLogin(Login login) {
		return this.loginDAO.teacherLogin(login);
	}

	@Override
	public Admin adminLogin(Login login) {
		return null;
	}

}
