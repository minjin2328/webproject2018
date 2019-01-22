package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Open_course;
import com.persistance.Open_courseDAO;

@Service("open_courseService")
public class Open_courseServiceImpl implements Open_courseService {
	
	@Resource(name="open_courseDAO")
	private Open_courseDAO open_courseDAO;
	
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
		List<Open_course> result = this.open_courseDAO.print3(opencourse, teacher_id);
		return result;
	}
	@Override
	public List<Open_course> print3(String key, String value, String opencourse, String teacher_id) {
		List<Open_course> result = this.open_courseDAO.print3(key, value, opencourse, teacher_id);
		return result;
	}
	@Override
	public List<Open_course> print3_2(String teacher_id) {
		List<Open_course> result = this.open_courseDAO.print3_2(teacher_id);
		return result;
	}
	@Override
	public List<Open_course> print3_2(String key, String value, String teacher_id) {
		List<Open_course> result = this.open_courseDAO.print3_2(key, value, teacher_id);
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
