package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Teachers;

public class TeacherRowMapper_login implements RowMapper<Teachers> {

	@Override
	public Teachers mapRow(ResultSet rs, int count) throws SQLException {
		
		Teachers teachers = new Teachers();
		
		teachers.setTeacher_id(rs.getString("teacher_id"));
		teachers.setTeacher_name(rs.getString("teacher_name"));
		
		return teachers;
	}

}
