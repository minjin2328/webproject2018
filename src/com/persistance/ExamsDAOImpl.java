package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Exams;
import com.mapper.ExamsRowMapper_2;
import com.mapper.ExamsRowMapper_5;

@Repository("examsDAO")
public class ExamsDAOImpl implements ExamsDAO {
	
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;

	@Override
	public List<Exams> print1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exams> print2(String openCourse_id, String teacher_id) {
		String sql = "SELECT v.openSubject_id, subject_name, start_openSubject, end_openSubject\r\n"
				+ "	, book_name, b.isbn, attendance_points, written_points, practice_points\r\n"
				+ "    , exam_date, exam_file_name, exam_id\r\n" 
				+ "    , (SELECT COUNT(*) FROM exams\r\n"
				+ "         WHERE opensubject_id = v.opensubject_id) examCount \r\n"
				+ "    , (SELECT COUNT(*) FROM student_grade WHERE exam_id = v.exam_id) AS count_\r\n"
				+ "    FROM teacher_view3_3 v LEFT JOIN books b\r\n" 
				+ "    ON v.book_id = b.book_id\r\n"
				+ "    WHERE v.openCourse_id = ?\r\n" 
				+ "    AND v.opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)\r\n" 
				+ "	LIMIT 0, 10";

		List<Exams> result = this.jdbcTemplateObject.query(sql, new ExamsRowMapper_2(), openCourse_id, teacher_id);

		return result;
	}
	@Override
	public List<Exams> print2(String key, String value, String openCourse_id, String teacher_id) {
		String sql = "SELECT v.openSubject_id, subject_name, start_openSubject, end_openSubject\r\n"
				+ "	, book_name, b.isbn, attendance_points, written_points, practice_points\r\n"
				+ "    , exam_date, exam_file_name, exam_id\r\n" 
				+ "    , (SELECT COUNT(*) FROM exams\r\n"
				+ "         WHERE opensubject_id = v.opensubject_id) examCount \r\n"
				+ "    , (SELECT COUNT(*) FROM student_grade WHERE exam_id = v.exam_id) AS count_\r\n"
				+ "    FROM teacher_view3_3 v LEFT JOIN books b\r\n" 
				+ "    ON v.book_id = b.book_id\r\n"
				+ "    WHERE v.openCourse_id = ?\r\n" 
				+ "    AND v.opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)\r\n";
		
		if (key.equals("all")) {
		} else if (key.equals("openSubject_id")) {
			sql += "    AND openSubject_id = ?";
		} else if (key.equals("subject_name")) {
			sql += "    AND INSTR(subject_name,?) > 0";
		} else if (key.equals("exam_date")) {
			sql += "    AND INSTR(exam_date,?) > 0";
		}
		sql += "    LIMIT 0, 10";

		List<Exams> result = null;
		
		if(key.equals("all")) {
			result = this.jdbcTemplateObject.query(sql, new ExamsRowMapper_2(), openCourse_id, teacher_id);
		} else {
			result = this.jdbcTemplateObject.query(sql, new ExamsRowMapper_2(), openCourse_id, teacher_id, value);
		}

		return result;
	}
	@Override
	public List<Exams> print2(String key, String value, String openCourse_id, String exam_id, String teacher_id) {
		String sql = "SELECT v.openSubject_id, subject_name, start_openSubject, end_openSubject\r\n"
				+ "	, book_name, b.isbn, attendance_points, written_points, practice_points\r\n"
				+ "    , exam_date, exam_file_name, exam_id\r\n" 
				+ "    , (SELECT COUNT(*) FROM exams\r\n"
				+ "         WHERE opensubject_id = v.opensubject_id) examCount \r\n"
				+ "    , (SELECT COUNT(*) FROM student_grade WHERE exam_id = v.exam_id) AS count_\r\n"
				+ "    FROM teacher_view3_3 v LEFT JOIN books b\r\n" 
				+ "    ON v.book_id = b.book_id\r\n"
				+ "    WHERE v.openCourse_id = ?\r\n" 
				+ "    AND exam_id = ?\r\n" 
				+ "    AND v.opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)\r\n";
		
		if (key.equals("all")) {
		} else if (key.equals("openSubject_id")) {
			sql += "    AND openSubject_id = ?";
		} else if (key.equals("subject_name")) {
			sql += "    AND INSTR(subject_name,?) > 0";
		} else if (key.equals("exam_date")) {
			sql += "    AND INSTR(exam_date,?) > 0";
		}
		sql += "    LIMIT 0, 10";

		List<Exams> result = null;
		
		if(key.equals("all")) {
			result = this.jdbcTemplateObject.query(sql, new ExamsRowMapper_2(), openCourse_id, exam_id, teacher_id);
		} else {
			result = this.jdbcTemplateObject.query(sql, new ExamsRowMapper_2(), openCourse_id, exam_id, teacher_id, value);
		}

		return result;
	}

	@Override
	public List<Exams> print4() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exams> print5(String openCourse_id, String openSubject_id, String exam_id, String teacher_id) {
		String sql = "SELECT v.student_id, stop_date, student_name, student_phone\r\n"
				+ "	, completion_status, completion_date\r\n"
				+ "	, exam_date, attendance_score, written_score, practice_score, total_score, exam_id\r\n"
				+ "    , student_picture_name\r\n" 
				+ "	FROM teacher_view4_6 v, student_pictureList sp\r\n"
				+ "	WHERE v.student_id = sp.student_id\r\n" 
				+ "    AND opensubject_id=?\r\n" 
				+ "	AND exam_id=?\r\n"
				+ "	LIMIT 0, 10";

		List<Exams> result = this.jdbcTemplateObject.query(sql, new ExamsRowMapper_5(), openSubject_id, exam_id);

		return result;
	}
	@Override
	public List<Exams> print5(String key, String value, String openCourse_id, String openSubject_id, String exam_id, String teacher_id) {
		String sql = "SELECT v.student_id, stop_date, student_name, student_phone\r\n"
				+ "	, completion_status, completion_date\r\n"
				+ "	, exam_date, attendance_score, written_score, practice_score, total_score, exam_id\r\n"
				+ "    , student_picture_name\r\n" 
				+ "	FROM teacher_view4_6 v, student_pictureList sp\r\n"
				+ "	WHERE v.student_id = sp.student_id\r\n" 
				+ "    AND opensubject_id=?\r\n" 
				+ "	AND exam_id=?\r\n";

		if (key.equals("all")) {
		} else if (key.equals("student_id")) {
			sql += "    AND student_id = ?";
		} else if (key.equals("student_name")) {
			sql += "    AND INSTR(student_name,?) > 0";
		} else if (key.equals("student_phone")) {
			sql += "    AND INSTR(student_phone,?) > 0";
		}
		sql += "    LIMIT 0, 10";

		List<Exams> result = null;

		if (key.equals("all")) {
			result = this.jdbcTemplateObject.query(sql, new ExamsRowMapper_5(), openSubject_id, exam_id);
		} else {
			result = this.jdbcTemplateObject.query(sql, new ExamsRowMapper_5(), openSubject_id, exam_id, value);
		}
		return result;
	}
	
	@Override
	public List<Exams> print6() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exams> print7() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Exams> print8() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Exams> print9() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Exams> print10() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public String select_examId(Exams e) {
		String sql = "SELECT CONCAT('EX', LPAD(IFNULL(SUBSTR(MAX(EXAM_ID), 3), 0) + 1, 2, 0)) AS newId FROM exams e";

		String result = this.jdbcTemplateObject.queryForObject(sql, String.class);
		

		return result;
	}
	
	@Override
	public int insert(Exams e) {
		
		String sql = "INSERT INTO  EXAMS (EXAM_ID, EXAM_DATE, EXAM_FILE_NAME, OPENSUBJECT_ID) \r\n" 
				+ "	VALUES (?, ?, ?, ?)";

		int result = this.jdbcTemplateObject.update(sql
				, e.getExam_id(), e.getExam_date(), e.getExam_file_name(), e.getOpenSubject_id());
		
		return result;
		
	}
	
	@Override
	public int insertPoint(Exams e) {
		String sql = "INSERT INTO  SUBJECT_SCORE (SUBJECTPOINTS_ID, ATTENDANCE_POINTS, WRITTEN_POINTS, PRACTICE_POINTS, EXAM_ID) \r\n"
				+ "	VALUES ((SELECT CONCAT('SP', LPAD(IFNULL(SUBSTR(MAX(SUBJECTPOINTS_ID), 3), 0) + 1, 2, 0)) AS newId FROM subject_score s)\r\n"
				+ "		, ?, ?, ?, ?)";

		int result = this.jdbcTemplateObject.update(sql
				,  e.getAttendance_points(), e.getWritten_points(), e.getPractice_points(), e.getExam_id());

		return result;
	}

	@Override
	public int update(Exams e) {
		String sql = "UPDATE EXAMS\r\n" 
				+ "	SET EXAM_DATE = ?\r\n" 
				+ "    , EXAM_FILE =?\r\n" 
				+ "    WHERE EXAM_ID = ?";

		int result = this.jdbcTemplateObject.update(sql
				, e.getExam_date(), e.getExam_file_name(), e.getExam_id());
		
		return result;
	}
	
	@Override
	public int updatePoint(Exams e) {
		String sql = "UPDATE SUBJECT_SCORE\r\n" 
				+ "	SET ATTENDANCE_POINTS =?\r\n"
				+ "    , WRITTEN_POINTS =?\r\n" 
				+ "    , PRACTICE_POINTS =?\r\n" 
				+ "    WHERE EXAM_ID = ?";

		int result = this.jdbcTemplateObject.update(sql
				, e.getAttendance_points(), e.getWritten_points()
				, e.getPractice_points(), e.getExam_id());
		
		return result;
	}

	@Override
	public int remove(String exam_id) {

		String sql = "DELETE FROM EXAMS\r\n" 
				+ "    WHERE exam_id = ?";

		int result = this.jdbcTemplateObject.update(sql,exam_id);

		return result;
	}
	
	@Override
	public int removePoint(Exams e) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int insertScore(Exams e) {
		String sql = "INSERT INTO STUDENT_GRADE (STUDENTGRADE_ID, ATTENDANCE_SCORE, WRITTEN_SCORE, PRACTICE_SCORE, EXAM_ID, STUDENT_ID) \r\n"
				+ "	VALUES ((SELECT CONCAT('SG', LPAD(IFNULL(SUBSTR(MAX(STUDENTGRADE_ID), 3), 0) + 1, 3, 0)) AS newId FROM STUDENT_GRADE e) \r\n"
				+ " , ?, ?, ?, ?, ?)";

		int result = this.jdbcTemplateObject.update(sql
				, e.getAttendance_score(), e.getWritten_score(), e.getPractice_score(), e.getExam_id(), e.getStudent_id());

		return result;
	}
	
	@Override
	public int updateScore(Exams e) {
		String sql = "UPDATE STUDENT_GRADE\r\n" 
				+ "	SET ATTENDANCE_SCORE = ?\r\n" 
				+ "    , WRITTEN_SCORE = ?\r\n"
				+ "    , PRACTICE_SCORE = ?\r\n" 
				+ "    WHERE STUDENT_ID = ?";

		int result = this.jdbcTemplateObject.update(sql
				, e.getAttendance_score(), e.getWritten_score()
				, e.getPractice_score(), e.getStudent_id());
		
		return result;
	}

	@Override
	public int removeScore(Exams e) {
		
		String sql = "DELETE FROM STUDENT_GRADE\r\n" 
				+ "		WHERE STUDENT_ID = ?\r\n"
				+ "	    AND EXAM_ID = ?";

		int result = this.jdbcTemplateObject.update(sql
				, e.getStudent_id(), e.getExam_id());
		
		return result;
	}

}
