package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Exams;

public class ExamsRowMapper_2 implements RowMapper<Exams> {

	@Override
	public Exams mapRow(ResultSet rs, int count) throws SQLException {

		Exams exams = new Exams();
		
	/*	v.openSubject_id, subject_name, start_openSubject, end_openSubject
	, book_name, attendance_points, written_points, practice_points
    , exam_date, exam_file, exam_id
    , (SELECT COUNT(*) FROM exams
         WHERE opensubject_id = v.opensubject_id) examCount 
    , (SELECT COUNT(*) FROM student_grade WHERE exam_id = v.exam_id) AS count_
*/
		exams.setOpenSubject_id(rs.getString("openSubject_id"));
		exams.setSubject_name(rs.getString("subject_name"));
		exams.setStart_openSubject(rs.getDate("start_openSubject"));
		exams.setEnd_openSubject(rs.getDate("end_openSubject"));
		exams.setBook_name(rs.getString("book_name"));
		exams.setIsbn(rs.getString("isbn"));
		exams.setAttendance_points(rs.getInt("attendance_points"));
		exams.setWritten_points(rs.getInt("written_points"));
		exams.setPractice_points(rs.getInt("practice_points"));
		exams.setExam_date(rs.getDate("exam_date"));
		exams.setExam_file_name(rs.getString("exam_file_name"));
		exams.setExamCount(rs.getInt("examCount"));
		exams.setExam_id(rs.getString("exam_id"));
		exams.setCount_(rs.getInt("count_"));
		
		return exams;
	}

}
