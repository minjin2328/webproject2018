package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Open_course;

public class Open_courseRowMapper implements RowMapper<Open_course> {

	@Override
	public Open_course mapRow(ResultSet rs, int count) throws SQLException {

		Open_course open_course = new Open_course();

		open_course.setOpenCourse_id(rs.getString("openCourse_id"));
		open_course.setCourse_id(rs.getString("course_id"));
		open_course.setCourse_name(rs.getString("course_name"));
		open_course.setClassRoom_id(rs.getString("classRoom_id"));

		open_course.setStart_openCourse(rs.getDate("start_openCourse"));
		open_course.setEnd_openCourse(rs.getDate("end_openCourse"));
		open_course.setStop_date(rs.getDate("stop_date"));

		open_course.setCompletion(rs.getString("completion"));

		open_course.setStudent_count(rs.getInt("student_count"));
		open_course.setRemove_count(rs.getInt("remove_count"));
		open_course.setOpensubject_count(rs.getInt("opensubject_count"));

		return open_course;
	}

}
