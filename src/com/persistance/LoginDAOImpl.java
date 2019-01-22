package com.persistance;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Admin;
import com.domain.Login;
import com.domain.Students;
import com.domain.Teachers;
import com.mapper.TeacherRowMapper_login;

@Repository("loginDAO")
public class LoginDAOImpl implements LoginDAO {
	
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;

	//수강생 로그인 메소드
	@Override
	public Students studentLogin(Login login) {
		return null;
	}

	//강사 로그인 메소드
	@Override
	public Teachers teacherLogin(Login login) {

		String sql = "SELECT teacher_id, teacher_name\r\n" 
				+ "    FROM teachers\r\n"
				+ "    WHERE teacher_name = ? AND teacher_pw = ?";

		return this.jdbcTemplateObject.queryForObject(sql, new TeacherRowMapper_login()
				, login.getName_(), login.getPw_());
	}

	//관리자 로그인 메소드
	@Override
	public Admin adminLogin(Login login) {
		return null;
	}

}
