package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Open_subject;
import com.mapper.Open_subjectRowMapper_1;

@Repository("open_subjectDAO")
public class Open_subjectDAOImpl implements Open_subjectDAO {
	
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;

	@Override
	public List<Open_subject> print1(String teacher_id) {

		String sql = "SELECT v.opencourse_id, course_name\r\n"
				+ "	, group_concat(subject_name SEPARATOR ', ') AS subject_name\r\n"
				+ "    , concat(start_opencourse,'~', end_opencourse) period, end_opencourse\r\n"
				+ "    ,classroom_name, opencourse, student_count\r\n"
				+ "	FROM teacher_view1 v, open_subject os, subjects s\r\n"
				+ "    WHERE v.openCourse_id = os.openCourse_id\r\n" 
				+ "	AND s.subject_id = os.subject_id\r\n"
				+ "    AND opencourse = '°­ÀÇÁß'\r\n" 
				+ "    AND v.opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)\r\n" 
				+ "	LIMIT 0, 10";
		
		List<Open_subject> result = this.jdbcTemplateObject.query(sql, new Open_subjectRowMapper_1(), teacher_id);

		return result;
	}

	@Override
	public List<Open_subject> print2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_subject> print3() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_subject> print4() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_subject> print5() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_subject> print6() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_subject> print7() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Open_subject os) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Open_subject> search(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int remove(Open_subject os) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Open_subject> print8() {
		// TODO Auto-generated method stub
		return null;
	}

}
