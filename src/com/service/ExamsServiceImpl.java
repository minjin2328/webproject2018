package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Exams;
import com.persistance.ExamsDAO;

@Service("examsService")
public class ExamsServiceImpl implements ExamsService {
	
	@Resource(name="examsDAO")
	private ExamsDAO examsDAO;
	
	@Override
	public List<Exams> print1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exams> print2(String openCourse_id, String teacher_id) {
		return this.examsDAO.print2(openCourse_id, teacher_id);
	}
	@Override
	public List<Exams> print2(String key, String value, String openCourse_id, String teacher_id) {
		return this.examsDAO.print2(key, value, openCourse_id, teacher_id);
	}
	@Override
	public List<Exams> print2(String key, String value, String openCourse_id, String exam_id, String teacher_id) {
		return this.examsDAO.print2(key, value, openCourse_id, exam_id, teacher_id);
	}

	@Override
	public List<Exams> print4() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exams> print5(String openCourse_id, String openSubject_id, String exam_id, String teacher_id) {
		return this.examsDAO.print5(openCourse_id, openSubject_id, exam_id, teacher_id);
	}
	@Override
	public List<Exams> print5(String key, String value, String openCourse_id, String openSubject_id, String exam_id, String teacher_id) {
		return this.examsDAO.print5(key, value, openCourse_id, openSubject_id, exam_id, teacher_id);
	}
	
	@Override
	public List<Exams> print6() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exams> print7() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Exams> print8() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Exams> print9() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Exams> print10() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String select_examId(Exams e) {
		return this.examsDAO.select_examId(e);
	}
	
	@Override
	public int insert(Exams e) {
		int result1 = this.examsDAO.insert(e);
		int result2 = this.examsDAO.insertPoint(e);
		
		if(result1!=0 && result2!=0) {
			return 1;
		}
		return 0;
	}
	
	@Override
	public int update(Exams e) {
		int result1 = this.examsDAO.update(e);
		int result2 = this.examsDAO.updatePoint(e);
		
		if(result1!=0 && result2!=0) {
			return 1;
		}
		return 0;
	}
	
	@Override
	public int removePoint(Exams e) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertScore(Exams e) {
		return this.examsDAO.insertScore(e);
	}

	@Override
	public int removeScore(Exams e) {
		return this.examsDAO.removeScore(e);
	}

	@Override
	public int updateScore(Exams e) {
		return this.examsDAO.updateScore(e);
	}
	
	@Override
	public int remove(String exam_id) {
		int result = this.examsDAO.remove(exam_id);
		return result;
	}

}
