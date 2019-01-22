package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Teachers;

public class TeacherRowMapper_3 implements RowMapper<Teachers> {

	@Override
	public Teachers mapRow(ResultSet rs, int count) throws SQLException {
		
		Teachers teachers = new Teachers();
		
		teachers.setSubject_id(rs.getString("subject_id"));
		teachers.setSubject_name(rs.getString("subject_name"));
		
		return teachers;
	}

}
