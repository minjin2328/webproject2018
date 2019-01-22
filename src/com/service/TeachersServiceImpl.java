package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Teachers;
import com.persistance.TeachersDAO;

@Service("teachersService")
public class TeachersServiceImpl implements TeachersService {
	
	@Resource(name="teachersDAO")
	private TeachersDAO teachersDAO;

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
		List<Teachers> result = this.teachersDAO.print1(teacher_id);
		return result;
	}

	@Override
	public List<Teachers> print2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Teachers> print3() {
		List<Teachers> result = this.teachersDAO.print3();
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
		// TODO Auto-generated method stub
		return this.teachersDAO.modify(t);
	}

	@Override
	public int reset(Teachers t) {
		// TODO Auto-generated method stub
		return 0;
	}

}
