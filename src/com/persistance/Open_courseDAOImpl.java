package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Open_course;
import com.mapper.Open_courseRowMapper_3;

@Repository("open_courseDAO")
public class Open_courseDAOImpl implements Open_courseDAO {
	
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;

	@Override
	public int insert(Open_course oc) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Open_course> print1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_course> print2(String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_course> print3(String opencourse, String teacher_id) {
		String sql = "SELECT opencourse_id, course_name\r\n" 
				+ "    , start_opencourse, end_opencourse\r\n"
				+ "    ,classroom_name, opencourse, student_count\r\n" 
				+ "	FROM teacher_view1\r\n"
				+ "    WHERE opencourse = ?\r\n" 
				+ "    AND opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)\r\n"
				+ "    LIMIT 0, 10";
		
		List<Open_course> result = this.jdbcTemplateObject.query(sql, new Open_courseRowMapper_3(), opencourse, teacher_id);

		return result;
	}
	@Override
	public List<Open_course> print3(String key, String value, String opencourse, String teacher_id) {

		String sql = "SELECT opencourse_id, course_name\r\n" 
				+ "    , start_opencourse, end_opencourse\r\n"
				+ "    ,classroom_name, opencourse, student_count\r\n" 
				+ "	FROM teacher_view1\r\n"
				+ "    WHERE opencourse = ?\r\n" 
				+ "    AND opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)\r\n";
		
		if (key.equals("all")) {
		} else if (key.equals("opencourse_id")) {
			sql += "    AND opencourse_id = ?";
		} else if (key.equals("course_name")) {
			sql += "    AND INSTR(course_name,?) > 0";
		}
		sql += "    LIMIT 0, 10";
		
		List<Open_course> result = null;
		
		if(key.equals("all")) {
			result = this.jdbcTemplateObject.query(sql, new Open_courseRowMapper_3(), opencourse, teacher_id);
		} else {
			result = this.jdbcTemplateObject.query(sql, new Open_courseRowMapper_3(), opencourse, teacher_id, value);
		}

		return result;
	}
	@Override
	public List<Open_course> print3_2(String teacher_id) {
		String sql = "SELECT opencourse_id, course_name\r\n" 
				+ "    , start_opencourse, end_opencourse\r\n"
				+ "    ,classroom_name, opencourse, student_count\r\n" 
				+ "	FROM teacher_view1\r\n"
				+ "    WHERE opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)\r\n"
				+ "    LIMIT 0, 10";

		List<Open_course> result = this.jdbcTemplateObject.query(sql, new Open_courseRowMapper_3(), teacher_id);

		return result;
	}
	@Override
	public List<Open_course> print3_2(String key, String value, String teacher_id) {

		String sql = "SELECT opencourse_id, course_name\r\n" 
				+ "    , start_opencourse, end_opencourse\r\n"
				+ "    ,classroom_name, opencourse, student_count\r\n" 
				+ "	FROM teacher_view1\r\n"
				+ "    WHERE opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)\r\n";
		
		if (key.equals("all")) {
		} else if (key.equals("opencourse_id")) {
			sql += "    AND opencourse_id = ?";
		} else if (key.equals("course_name")) {
			sql += "    AND INSTR(course_name,?) > 0";
		}
		sql += "    LIMIT 0, 10";

		List<Open_course> result = null;
				
		if(key.equals("all")) {
			result = this.jdbcTemplateObject.query(sql, new Open_courseRowMapper_3(), teacher_id);
		} else {
			result = this.jdbcTemplateObject.query(sql, new Open_courseRowMapper_3(), teacher_id, value);
		}
		
		return result;
	}
	
	@Override
	public List<Open_course> print4() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_course> print5() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_course> print6() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_course> print7() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Open_course> search(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int remove(Open_course oc) {
		// TODO Auto-generated method stub
		return 0;
	}

}
