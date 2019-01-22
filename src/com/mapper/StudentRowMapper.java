package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Students;

public class StudentRowMapper implements RowMapper<Students> {

	@Override
	public Students mapRow(ResultSet rs, int count) throws SQLException {
		
		Students students = new Students();
		
		students.setStudent_id(rs.getString("student_id"));
		students.setStudent_name(rs.getString("student_name"));
		students.setStudent_phone(rs.getString("student_phone"));
		students.setStudent_pw(rs.getString("student_pw"));
		students.setStudent_regDate(rs.getDate("student_regDate"));
		students.setStudent_attendance(rs.getInt("student_attendance"));
		students.setCompletion_status(rs.getString("completion_status"));
		students.setCompleteion_date(rs.getDate("completeion_date"));
		
		return students;
	}

}
