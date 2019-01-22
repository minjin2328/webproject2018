package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Teachers;

public class TeacherRowMapper implements RowMapper<Teachers> {

	@Override
	public Teachers mapRow(ResultSet rs, int count) throws SQLException {
		
		Teachers teachers = new Teachers();
		
		teachers.setTeacher_id(rs.getString("teacher_id"));
		teachers.setTeacher_name(rs.getString("teacher_name"));
		teachers.setTeacher_phone(rs.getString("teacher_phone"));
		teachers.setTeacher_pw(rs.getString("teacher_pw"));
		teachers.setSubject_id(rs.getString("subject_id"));
		teachers.setSubject_name(rs.getString("subject_name"));
		teachers.setTeacher_regDate(rs.getDate("teacher_regDate"));
		teachers.setCount_(rs.getInt("count_"));
		
		return teachers;
	}

}
