package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Open_subject;
import com.persistance.Open_subjectDAO;

@Service("open_subjectService")
public class Open_subjectServiceImpl implements Open_subjectService {
	
	@Resource(name="open_subjectDAO")
	private Open_subjectDAO open_subjectDAO;
	
	@Override
	public List<Open_subject> print1(String teacher_id) {
		return this.open_subjectDAO.print1(teacher_id);
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
