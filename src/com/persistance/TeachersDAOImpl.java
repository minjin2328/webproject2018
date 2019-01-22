package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Teachers;
import com.mapper.TeacherRowMapper_1;
import com.mapper.TeacherRowMapper_3;

@Repository("teachersDAO")
public class TeachersDAOImpl implements TeachersDAO {
	
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;

	@Override
	public String login(Teachers t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Teachers t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Teachers> print1(String teacher_id) {

		String sql = "SELECT teacher_name, teacher_phone, teacher_regdate\r\n" 
				+ "    FROM teachers\r\n" 
				+ "    WHERE teacher_id = ?";

		List<Teachers> result = this.jdbcTemplateObject.query(sql, new TeacherRowMapper_1(), teacher_id);

		return result;
	}

	@Override
	public List<Teachers> print2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Teachers> print3() {
		String sql = "SELECT s.subject_id, s.subject_name\r\n" 
				+ "    FROM subjects s, available_subjects as_\r\n"
				+ "    WHERE s.subject_id = as_.subject_id\r\n" 
				+ "    AND as_.teacher_id = ?\r\n"
				+ "    ORDER BY subject_id";

		List<Teachers> result = this.jdbcTemplateObject.query(sql, new TeacherRowMapper_3(), "T01");

		return result;
	}

	@Override
	public List<Teachers> search(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int remove(Teachers t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modify(Teachers t) {

		int result = 0;

		String sql = "UPDATE teachers\r\n" 
				+ "	SET teacher_pw = ?\r\n" 
				+ "    WHERE teacher_id = ?\r\n"
				+ "    AND teacher_pw = ?";

		result = this.jdbcTemplateObject.update(sql, t.getTeacher_newPw(), t.getTeacher_id(), t.getTeacher_pw());

		return result;
		
	}

	@Override
	public int reset(Teachers t) {
		// TODO Auto-generated method stub
		return 0;
	}

}
