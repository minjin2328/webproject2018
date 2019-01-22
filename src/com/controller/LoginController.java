package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.domain.Admin;
import com.domain.Students;
import com.domain.Teachers;
import com.service.LoginService;
import com.domain.Login;

@Controller
public class LoginController {
	
	@Resource(name="loginService")
	private LoginService loginService;
	
	@RequestMapping("/index")
	public String index() {
		
		//WEB-INF/views/login.jsp
		return "index";
	}
	
	// ·Î±×ÀÎ
	@RequestMapping("/index/login")
	public String Login(HttpSession session, Login login) {

		Students student = null;
		Teachers teacher = null;
		Admin admin = null;
		
		String url="redirect:/login/loginFail";
		
		try {
			
			if(login.getKey().equals("student")) {
				student = this.loginService.studentLogin(login);
				if (student != null) {
					session.setAttribute("student", student);
					url = "redirect:/student/student_0";
				}
			} else if(login.getKey().equals("teacher")) {
				teacher = this.loginService.teacherLogin(login);
				if (teacher != null) {
					session.setAttribute("teacher", teacher);
					url = "redirect:/teacher/teacher_0";
				}				
			} else if(login.getKey().equals("admin")) {
				admin = this.loginService.adminLogin(login);
				if (admin != null) {
					session.setAttribute("admin", admin);
					url = "redirect:/admin/admin_0";
				}
			}
			
		} catch (DataAccessException e) {
		}

		return url;
	}

	@RequestMapping("/login/loginFail")
	public String loginfail() {
		return "login/loginFail";
	}

	@RequestMapping("/login/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login/logout";
	}

}
