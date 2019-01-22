package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Students;

public class StudentRowMapper_dash implements RowMapper<Students> {

	@Override
	public Students mapRow(ResultSet rs, int count) throws SQLException {

		Students students = new Students();

		students.setCompletion_status1(rs.getInt("completion_status1"));
		students.setCompletion_status2(rs.getInt("completion_status2"));
		students.setCompletion_status3(rs.getInt("completion_status3"));

		return students;
	}
}
