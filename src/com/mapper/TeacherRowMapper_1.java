package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Teachers;

public class TeacherRowMapper_1 implements RowMapper<Teachers> {

	@Override
	public Teachers mapRow(ResultSet rs, int count) throws SQLException {
		
		Teachers teachers = new Teachers();
		
		teachers.setTeacher_name(rs.getString("teacher_name"));
		teachers.setTeacher_phone(rs.getString("teacher_phone"));
		teachers.setTeacher_regDate(rs.getDate("teacher_regDate"));
		
		return teachers;
	}

}
