package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Exams;

public class ExamsRowMapper_5 implements RowMapper<Exams> {

	@Override
	public Exams mapRow(ResultSet rs, int count) throws SQLException {

		Exams exams = new Exams();
		
		exams.setStudent_id(rs.getString("student_id"));
		exams.setStudent_name(rs.getString("student_name"));
		exams.setStudent_phone(rs.getString("student_phone"));
		exams.setCompletion(rs.getString("completion_status"));//
		exams.setStop_date(rs.getString("stop_date"));
		exams.setAttendance_score(rs.getInt("attendance_score"));
		exams.setWritten_score(rs.getInt("written_score"));
		exams.setPractice_score(rs.getInt("practice_score"));
		exams.setTotal_score(rs.getInt("total_score"));
		exams.setExam_date(rs.getDate("exam_date"));
		exams.setExam_id(rs.getString("exam_id"));
		exams.setStudent_picture_name(rs.getString("student_picture_name"));
		
		return exams;
	}

}
