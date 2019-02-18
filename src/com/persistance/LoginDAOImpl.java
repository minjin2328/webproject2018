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
		String sql = "SELECT student_id, student_name\r\n" 
				+ "    FROM students\r\n"
				+ "    WHERE student_name = ? AND student_pw = ?";

		return this.jdbcTemplateObject.queryForObject(sql, new StudentRowMapper_login()
				, login.getName_(), login.getPw_());
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
		String sql = "SELECT admin_id, admin_name\r\n" 
				+ "    FROM admins\r\n"
				+ "    WHERE admin_name = ? AND admin_pw = ?";

		return this.jdbcTemplateObject.queryForObject(sql, new AdminRowMapper_login()
				, login.getName_(), login.getPw_());
	}

}
