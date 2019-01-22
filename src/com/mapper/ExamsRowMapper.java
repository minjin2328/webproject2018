package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Exams;

public class ExamsRowMapper implements RowMapper<Exams> {

	@Override
	public Exams mapRow(ResultSet rs, int count) throws SQLException {

		Exams exams = new Exams();
		
		exams.setExam_id(rs.getString("exam_id"));
		exams.setExam_file_name(rs.getString("exam_file_name"));
		exams.setOpenSubject_id(rs.getString("openSubject_id"));
		exams.setSubjectPoints_id(rs.getString("subjectPoints_id"));
		exams.setSubject_id(rs.getString("subject_id"));
		exams.setSubject_name(rs.getString("subject_name"));
		exams.setBook_name(rs.getString("book_name"));
		exams.setStudent_id(rs.getString("student_id"));
		exams.setStudent_name(rs.getString("student_name"));
		exams.setStudent_phone(rs.getString("student_phone"));
		exams.setCompletion(rs.getString("completion"));
		exams.setStop_date(rs.getString("stop_date"));
		
		exams.setExam_date(rs.getDate("exam_date"));
		exams.setStart_openSubject(rs.getDate("start_openSubject"));
		exams.setEnd_openSubject(rs.getDate("end_openSubject"));
		
		exams.setAttendance_points(rs.getInt("attendance_points"));
		exams.setWritten_points(rs.getInt("written_points"));
		exams.setPractice_points(rs.getInt("practice_points"));
		exams.setAttendance_score(rs.getInt("attendance_score"));
		exams.setWritten_score(rs.getInt("written_score"));
		exams.setPractice_score(rs.getInt("practice_score"));
		exams.setCount_(rs.getInt("count_"));
		exams.setTotal_score(rs.getInt("total_score"));
		
		return exams;
	}

}
