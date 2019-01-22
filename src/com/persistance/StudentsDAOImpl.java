package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Students;
import com.mapper.StudentRowMapper_3;
import com.mapper.StudentRowMapper_dash;

@Repository("studentsDAO")
public class StudentsDAOImpl implements StudentsDAO {

	@Resource(name = "jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;

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
		String sql = "SELECT s.student_id, student_name, student_phone, student_regDate, \r\n" 
				+ "    (CASE \r\n"
				+ "    WHEN NOW() < end_opencourse AND stop_date IS NULL THEN '진행중'\r\n"
				+ "    WHEN NOW() > end_opencourse AND stop_date IS NULL THEN '수료완료'\r\n"
				+ "    WHEN stop_date IS NOT NULL THEN '중도탈락'\r\n" 
				+ "    END)AS completion_status\r\n"
				+ "  , (CASE\r\n" 
				+ "    WHEN NOW() < end_opencourse AND stop_date IS NULL THEN null\r\n"
				+ "    WHEN NOW() > end_opencourse AND stop_date IS NULL THEN end_opencourse\r\n"
				+ "    WHEN NOW() IS NOT NULL THEN stop_date\r\n"
				+ "    END)AS completeion_date, student_picture_name\r\n"
				+ "FROM students s LEFT JOIN completion_course cc ON s.student_id = cc.student_id\r\n"
				+ "	, open_course oc, course_history ch_, student_pictureList sp\r\n"
				+ "	WHERE  ch_.student_id=s.student_id  AND oc.opencourse_id=ch_.opencourse_id \r\n"
				+ "    AND s.student_id = sp.student_id\r\n" 
				+ "	AND ch_.opencourse_id = ?\r\n"
				+ "	AND ch_.opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)\r\n" 
				+ "	LIMIT ?, 10";

		List<Students> result = this.jdbcTemplateObject.query(sql, new StudentRowMapper_3(), openCourse_id, teacher_id, Integer.parseInt(pageStart));

		return result;
	} 
	@Override
	public List<Students> print3(String key, String value, String openCourse_id, String teacher_id, String pageStart) {
		String sql = "SELECT s.student_id, student_name, student_phone, student_regDate, \r\n" 
				+ "    (CASE \r\n"
				+ "    WHEN NOW() < end_opencourse AND stop_date IS NULL THEN '진행중'\r\n"
				+ "    WHEN NOW() > end_opencourse AND stop_date IS NULL THEN '수료완료'\r\n"
				+ "    WHEN stop_date IS NOT NULL THEN '중도탈락'\r\n" 
				+ "    END)AS completion_status\r\n"
				+ "  , (CASE\r\n" 
				+ "    WHEN NOW() < end_opencourse AND stop_date IS NULL THEN null\r\n"
				+ "    WHEN NOW() > end_opencourse AND stop_date IS NULL THEN end_opencourse\r\n"
				+ "    WHEN NOW() IS NOT NULL THEN stop_date\r\n"
				+ "    END)AS completeion_date, student_picture_name\r\n"
				+ "FROM students s LEFT JOIN completion_course cc ON s.student_id = cc.student_id\r\n"
				+ "	, open_course oc, course_history ch_, student_pictureList sp\r\n"
				+ "	WHERE  ch_.student_id=s.student_id  AND oc.opencourse_id=ch_.opencourse_id \r\n"
				+ "    AND s.student_id = sp.student_id\r\n" 
				+ "	AND ch_.opencourse_id = ?\r\n"
				+ "	AND ch_.opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)\r\n" ;
		
		if (key.equals("all")) {
		} else if (key.equals("student_id")) {
			sql += "    AND s.student_id = ?";
		} else if (key.equals("student_name")) {
			sql += "    AND INSTR(student_name,?) > 0";
		} else if (key.equals("student_phone")) {
			sql += "    AND INSTR(student_phone,?) > 0";
		}
		System.out.println(key +"/" + value);
		sql += "    LIMIT ?, 10";
		
		List<Students> result = null;
		
		if(key.equals("all")) {
			result = this.jdbcTemplateObject.query(sql, new StudentRowMapper_3(), openCourse_id, teacher_id, Integer.parseInt(pageStart));
		} else {
			result = this.jdbcTemplateObject.query(sql, new StudentRowMapper_3(), openCourse_id, teacher_id, value, Integer.parseInt(pageStart));
		}

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
		int result = 0;
		String sql = "SELECT COUNT(*) totalcount FROM students";
		if (key.equals("all")) {
		} else if (key.equals("student_id")) {
			sql += " WHERE student_id = ?\r\n";
		} else if (key.equals("student_name")) {
			sql += " WHERE INSTR(student_name, ?) > 0\r\n";
		}
		if (key.equals("all")) {
			result = this.jdbcTemplateObject.queryForObject(sql, Integer.class);
		} else {
			result = this.jdbcTemplateObject.queryForObject(sql, Integer.class, value);
		}
		return result;
	}

	@Override
	public List<Students> dash(String teacher_id) {
		String sql = "SELECT COUNT(CASE WHEN NOW() < oc.end_opencourse AND stop_date IS NULL THEN '진행중' END) as 'completion_status1'\r\n"
				+ "	, COUNT(CASE WHEN stop_date IS NOT NULL THEN '중도탈락' END) as 'completion_status2'\r\n"
				+ "    , COUNT(CASE WHEN NOW() > oc.end_opencourse AND stop_date IS NULL THEN '수료완료' END) as 'completion_status3'\r\n"
				+ "FROM students s LEFT JOIN completion_course cc ON s.student_id = cc.student_id\r\n"
				+ "	, open_course oc, course_history ch_, teacher_view1 v\r\n"
				+ "	WHERE  ch_.student_id=s.student_id\r\n" 
				+ "    AND v.openCourse_id = oc.openCourse_id\r\n"
				+ "    AND oc.opencourse_id=ch_.opencourse_id \r\n" 
				+ "	AND v.opencourse = '강의중'\r\n"
				+ "	AND ch_.opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)";

		List<Students> result = this.jdbcTemplateObject.query(sql, new StudentRowMapper_dash(), teacher_id);

		return result;
	}

	@Override
	public int dash2(String teacher_id) {
		String sql = "SELECT (TO_DAYS(now())-TO_DAYS(oc.start_openCourse))/(TO_DAYS(oc.end_openCourse)-TO_DAYS(oc.start_openCourse))*100 AS course_date\r\n"
				+ "FROM open_course oc, teacher_view1 v\r\n" 
				+ "	WHERE v.openCourse_id = oc.openCourse_id\r\n"
				+ "	AND v.opencourse = '강의중'\r\n" 
				+ "	AND v.opencourse_id IN (SELECT os.opencourse_id\r\n"
				+ "                                FROM teachers ins, open_subject os\r\n"
				+ "                                WHERE ins.teacher_id = os.teacher_id\r\n"
				+ "                                AND os.teacher_id = ?)";

		int result = this.jdbcTemplateObject.queryForObject(sql, Integer.class, teacher_id);
		System.out.println("*************"+result);
		return result;
	}

}
