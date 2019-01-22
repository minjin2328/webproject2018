package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Courses;


public class CoursesRowMapper implements RowMapper<Courses> {

	@Override
	public Courses mapRow(ResultSet rs, int count) throws SQLException {
		
		Courses courses = new Courses();
		
		courses.setCourse_id(rs.getString("course_id"));
		courses.setCourse_name(rs.getString("course_name"));

		return courses;
	}

}
