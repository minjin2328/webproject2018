package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Books;


public class BooksRowMapper  implements RowMapper<Books>{

	@Override
	public Books mapRow(ResultSet rs, int count) throws SQLException {

		Books books = new Books();
		
		books.setBook_id(rs.getString("book_id"));
		books.setBook_name(rs.getString("book_name"));
		books.setIsbn(rs.getString("isbn"));
		
		return books;
	}

}
