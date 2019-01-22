package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Open_subject;

public class Open_subjectRowMapper_1 implements RowMapper<Open_subject> {

	@Override
	public Open_subject mapRow(ResultSet rs, int count) throws SQLException {
		
		Open_subject open_subject = new Open_subject();

		open_subject.setOpenCourse_id(rs.getString("openCourse_id"));
		open_subject.setCourse_name(rs.getString("course_name"));
		open_subject.setSubject_name(rs.getString("subject_name"));
		open_subject.setPeriod(rs.getString("period"));
		open_subject.setEnd_openCourse(rs.getDate("end_openCourse"));
		
		return open_subject;
	}

}
