package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Open_course;

public class Open_courseRowMapper_3 implements RowMapper<Open_course> {

	@Override
	public Open_course mapRow(ResultSet rs, int count) throws SQLException {

		/* classroom_name, opencourse, student */
		
		Open_course open_course = new Open_course();

		open_course.setOpenCourse_id(rs.getString("openCourse_id"));
		open_course.setCourse_name(rs.getString("course_name"));

		open_course.setStart_openCourse(rs.getDate("start_openCourse"));
		open_course.setEnd_openCourse(rs.getDate("end_openCourse"));
		open_course.setClassRoom_name(rs.getString("classRoom_name"));
		open_course.setOpencourse(rs.getString("opencourse"));
		open_course.setStudent_count(rs.getInt("student_count"));

		return open_course;
	}

}
