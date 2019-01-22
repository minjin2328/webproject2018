package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Students;
import com.persistance.StudentsDAO;

@Service("studentsService")
public class StudentsServiceImpl implements StudentsService {
	
	@Resource(name="studentsDAO")
	private StudentsDAO studentsDAO;
	
	@Override
	public String login(Students s) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Students s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int courseHistoryAdd(Students s) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public List<Students> print1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Students> print2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Students> print3(String openCourse_id, String teacher_id, String pageStart) {
		List<Students> result = this.studentsDAO.print3(openCourse_id, teacher_id, pageStart);
		return result;
	}
	@Override
	public List<Students> print3(String key, String value, String openCourse_id, String teacher_id, String pageStart) {
		List<Students> result = this.studentsDAO.print3(key, value, openCourse_id, teacher_id, pageStart);
		return result;
	}
	
	@Override
	public List<Students> print4() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Students> search(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int remove(Students s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modify(Students s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reset(Students s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int courseHistoryRemove(Students s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int completionCourseAdd(Students s) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int totalcount(String key, String value) {
		return this.studentsDAO.totalcount(key, value);
	}

	@Override
	public List<Students> dash(String teacher_id) {
		return this.studentsDAO.dash(teacher_id);
	}

	@Override
	public int dash2(String teacher_id) {
		return this.studentsDAO.dash2(teacher_id);
	}

}
