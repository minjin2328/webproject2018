package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Admin;

public class AdminRowMapper implements RowMapper<Admin> {

	@Override
	public Admin mapRow(ResultSet rs, int count) throws SQLException {

		Admin admin = new Admin();
	
		admin.setAdmin_id(rs.getString("admin_id"));
		admin.setAdmint_pw(rs.getString("admin_pw"));
		
		return admin;
	}

}
