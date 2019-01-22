package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Classrooms;

public class ClassroomsRowMapper implements RowMapper<Classrooms> {

	@Override
	public Classrooms mapRow(ResultSet rs, int count) throws SQLException {

		Classrooms classrooms = new Classrooms();
		
		classrooms.setClassRoom_id(rs.getString("classRoom_id"));
		classrooms.setClassRoom_name(rs.getString("classRoom_name"));
		classrooms.setMax_persons(rs.getInt("max_persons"));
		
		return classrooms;
	}

}
