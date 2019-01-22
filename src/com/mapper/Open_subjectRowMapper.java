package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Open_subject;

public class Open_subjectRowMapper implements RowMapper<Open_subject> {

	@Override
	public Open_subject mapRow(ResultSet rs, int count) throws SQLException {
		
		Open_subject open_subject = new Open_subject();

		open_subject.setOpenSubject_id(rs.getString("openSubject_id"));
		open_subject.setSubject_id(rs.getString("subject_id"));
		open_subject.setSubject_name(rs.getString("subject_name"));
		open_subject.setBook_id(rs.getString("book_id"));
		open_subject.setBook_name(rs.getString("book_name"));
		open_subject.setOpenCourse_id(rs.getString("openCourse_id"));
		open_subject.setCourse_name(rs.getString("course_name"));
		open_subject.setClassRoom_id(rs.getString("classRoom_id"));
		open_subject.setClassRoom_name(rs.getString("classRomm_name"));
		open_subject.setOpenSubject_status(rs.getString("openSubject_status"));
		
		open_subject.setStart_openSubject(rs.getDate("start_openSubject"));
		open_subject.setEnd_openSubject(rs.getDate("end_openSubject"));
		open_subject.setStart_openCourse(rs.getDate("start_openCourse"));
		open_subject.setEnd_openCourse(rs.getDate("end_openCourse"));
		open_subject.setCount_(rs.getInt("count_"));
		
		return open_subject;
	}

}
