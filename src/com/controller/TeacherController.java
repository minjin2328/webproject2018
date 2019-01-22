package com.controller;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Exams;
import com.domain.Open_course;
import com.domain.Students;
import com.domain.Teachers;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.service.ExamsService;
import com.service.LoginService;
import com.service.Open_courseService;
import com.service.Open_subjectService;
import com.service.StudentsService;
import com.service.TeachersService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	
	//임시 자료
	String teacherId;
	
	// byType - 자료형 기준 의존주입
	@Autowired
	private ServletContext context;
	
	@Resource(name="loginService")
	private LoginService loginService;
	
	//teacherList1
	@Resource(name="teachersService")
	private TeachersService teachersService;
	
	//teacherList0
	//teacherList2_2
	@Resource(name="open_subjectService")
	private Open_subjectService open_subjectService;
	
	//teacherList2_1
	//teacherList3_1
	//teacherList4_1
	@Resource(name="open_courseService")
	private Open_courseService open_courseService;
	
	//teacherList2_2
	@Resource(name="studentsService")
	private StudentsService studentsService;
	
	//teacherList3_2
	//teacherList4_2
	//teacherList4_3
	@Resource(name="examsService")
	private ExamsService examsService;
	
	@RequestMapping(value={"/teacher_0"})
	public String teacherList0(Model model, HttpSession session) {
		//과정아이디 / 과정명 / 과목명 / 수강기간
		teacherId = ((Teachers)session.getAttribute("teacher")).getTeacher_id();
		model.addAttribute("list", this.open_subjectService.print1(teacherId));
		model.addAttribute("completion_status", this.studentsService.dash(teacherId));
		model.addAttribute("course_date", this.studentsService.dash2(teacherId));
		System.out.println("*************"+this.studentsService.dash2(teacherId));
		
		return "teacher/teacher_0/teacher_0";
	}
	
	@RequestMapping(value={"/teacher_1"})
	public String teacherList1(Model model) {
		//강사명 / 전화번호 / 등록일
		model.addAttribute("teacher_info", this.teachersService.print1(teacherId));
		//과목아이디 / 과목명
		model.addAttribute("subject_list", this.teachersService.print3());
		model.addAttribute("totalCount", this.teachersService.print3().size());
		
		
		return "teacher/teacher_1/teacher_1";
	}
	
	@RequestMapping(value={"/teacher_1/update"})
	public String teacherList1_update(Model model, RedirectAttributes rttr, Teachers t) {
		
		String txt = "fail";
		t.setTeacher_id(teacherId);
		
		int result = this.teachersService.modify(t);
		if(result == 1) {
			txt = "success";
		}
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/teacher/teacher_1";
	}
	
	@RequestMapping(value={"/teacher_2_1"})	//페이징
	public String teacherList2_1(Model model, @ModelAttribute("key") String key, @ModelAttribute("value") String value) {
		//개설과정아이디 / 과정명 / 과정시작일 / 과정종료일 / 강의실명 / 수강인원	--- 강의상태 탭
		
		//강의중
		List<Open_course> list1 = null;
		//강의예정
		List<Open_course> list2 = null;
		//강의종료
		List<Open_course> list3 = null;
		
		
		if(key == null || key.equals("")) {
			key = "all";
		}
		
		if(key.equals("all")) {
			list1 = this.open_courseService.print3("강의중", teacherId);
			list2 = this.open_courseService.print3("강의예정", teacherId);
			list3 = this.open_courseService.print3("강의종료", teacherId);
		} else {
			list1 = this.open_courseService.print3(key, value, "강의중", teacherId);
			list2 = this.open_courseService.print3(key, value, "강의예정", teacherId);
			list3 = this.open_courseService.print3(key, value, "강의종료", teacherId);
		}
		
		model.addAttribute("course_list1", list1);
		model.addAttribute("totalCount1", this.open_courseService.print3("강의중", teacherId).size());
		model.addAttribute("searchCount1", list1.size());
		model.addAttribute("course_list2", list2);
		model.addAttribute("totalCount2", this.open_courseService.print3("강의예정", teacherId).size());
		model.addAttribute("searchCount2", list2.size());
		model.addAttribute("course_list3", list3);
		model.addAttribute("totalCount3", this.open_courseService.print3("강의종료", teacherId).size());
		model.addAttribute("searchCount3", list3.size());
		
		return "teacher/teacher_2/teacher_2_1";
	}
	
	@RequestMapping(value={"/teacher_2_2"}) //페이징
	public String teacherList2_2(Model model, String openCourse_id
			, @ModelAttribute("key") String key, @ModelAttribute("value") String value
			, @ModelAttribute("pageNum") String pageNum) {
		//개설과정아이디 / 과정명 / 과정시작일 / 과정종료일 / 강의실명 / 수강인원
		model.addAttribute("course_list", this.open_courseService.print3_2("opencourse_id", openCourse_id, teacherId));
		
		//과목아이디 / 과목명 / 과목시작일 / 과목종료일 / 교재
		model.addAttribute("subject_list", this.examsService.print2(openCourse_id, teacherId));
		model.addAttribute("subjectCount", this.examsService.print2(openCourse_id, teacherId).size());
		
		//수강생아이디 / 수강생명 / 전화번호 / 등록일 / 수료중도탈락 여부 / 수료중도탈락 날짜
		List<Students> list = null;

		if (key == null || key.equals("")) {
			key = "all";
		}

		// 마지막 페이지 초기값
		int lastPage = 0;
		// 보여지는 게시글 수
		int pageCount = 10;

		// 페이지 번호 초기값
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}

		// 페이지 번호
		int pageNum_ = Integer.parseInt(pageNum);
		// 다음 페이지
		int pageStart = pageCount * (pageNum_ - 1);
		
		// 검색된 게시글 수
		int totalcount = this.studentsService.totalcount("all", value);

		// 마지막 페이지 계산 과정 추가
		// (double) pageCount(10) 연산의 결과값에서 가장 가까운 큰 정수
		lastPage = (int) (Math.ceil(totalcount / (double) pageCount));

		if (key.equals("all")) {
			list = this.studentsService.print3(openCourse_id, teacherId, String.valueOf(pageStart));
		} else {
			list = this.studentsService.print3(key, value, openCourse_id, teacherId, String.valueOf(pageStart));
		}
		
		model.addAttribute("student_list", list);
		model.addAttribute("totalCount", totalcount);
		model.addAttribute("searchCount", list.size());
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("pageNum", pageNum_);
		model.addAttribute("pageStart", pageStart);
		
		return "teacher/teacher_2/teacher_2_2";
	}
	
	@RequestMapping(value={"/teacher_3_1"})	//페이징
	public String teacherList3_1(Model model, @ModelAttribute("key") String key, @ModelAttribute("value") String value) {
		//개설과정아이디 / 과정명 / 강의실명 / 과정시작일 / 과정종료일 / 강의상태 / 수강인원
		List<Open_course> list = null;
		
		if (key == null || key.equals("")) {
			key = "all";
		}

		if (key.equals("all")) {
			list = this.open_courseService.print3_2(teacherId);
		} else {
			list = this.open_courseService.print3_2(key, value, teacherId);
		}

		model.addAttribute("course_list", list);
		model.addAttribute("totalCount", this.open_courseService.print3_2(teacherId).size());
		model.addAttribute("searchCount", list.size());
		
		return "teacher/teacher_3/teacher_3_1";
	}
	
	@RequestMapping(value={"/teacher_3_2"})	//검색, 추가, 수정, 삭제, 페이징
	public String teacherList3_2(Model model, String openCourse_id, @ModelAttribute("key") String key, @ModelAttribute("value") String value) {
		//개설과정아이디 / 과정명 / 강의실명 / 과정시작일 / 과정종료일 / 강의상태 / 수강인원
		model.addAttribute("course_list", this.open_courseService.print3_2("opencourse_id", openCourse_id, teacherId));
		
		// 개설과목아이디 / 과목명 / 과목시작일 / 과목종료일 / 교재 / 출결필기실기배점 / 시험날짜 / 시험문제
		List<Exams> list = null;

		if (key == null || key.equals("")) {
			key = "all";
		}

		if (key.equals("all")) {
			list = this.examsService.print2(openCourse_id, teacherId);
		} else {
			list = this.examsService.print2(key, value, openCourse_id, teacherId);
		}
		model.addAttribute("subject_list", list);
		model.addAttribute("totalCount", this.examsService.print2(openCourse_id, teacherId).size());
		model.addAttribute("searchCount", list.size());
		
		return "teacher/teacher_3/teacher_3_2";
	}
	
	@RequestMapping(value={"/teacher_3_2/insert"})
	public String teacherList3_2_insert(Model model, RedirectAttributes rttr, String openCourse_id, Exams e) {
		
		int result = 0;
		String txt = "fail";
		e.setExam_id(this.examsService.select_examId(e));
		
		// 파일 추가
		MultipartFile exam_file = e.getExam_file();
		String uploadPath = this.context.getRealPath("") + "resources/examFile" + File.separator;
		String temp = exam_file.getOriginalFilename();
		String ext = temp.substring(temp.lastIndexOf("."));
		String date=String.valueOf(e.getExam_date()).replaceAll("-", "");
		String newFileName = openCourse_id + "_" + e.getOpenSubject_id() + "_" + date + ext;
		
		try {
			FileCopyUtils.copy(exam_file.getBytes(), new File(uploadPath + newFileName));
			e.setExam_file_name(newFileName);
			result = this.examsService.insert(e);
			if (result == 1) {
				txt = "success";
			}
		} catch (IOException ee) {
			ee.printStackTrace();
		}
		
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/teacher/teacher_3_2?openCourse_id="+openCourse_id;
		
	}
	@RequestMapping(value={"/teacher_3_2/update"})
	public String teacherList3_2_update(Model model, RedirectAttributes rttr, Exams e, String openCourse_id) {
		
		String txt = "fail";
		int result = this.examsService.update(e);
		if(result == 1) {
			txt = "success";
		}
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/teacher/teacher_3_2?openCourse_id="+openCourse_id;
	}
	@RequestMapping(value={"/teacher_3_2/delete"})
	public String teacherList3_2_delete(Model model, RedirectAttributes rttr, String exam_id, String openCourse_id) {
		
		String txt = "fail";
		int result = this.examsService.remove(exam_id);
		if(result == 1) {
			txt = "success";
		}
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/teacher/teacher_3_2?openCourse_id="+openCourse_id;
	}
	
	@RequestMapping(value={"/teacher_4_1"})	//페이징
	public String teacherList4_1(Model model, @ModelAttribute("key") String key, @ModelAttribute("value") String value) {
		//개설과정아이디 / 과정명 / 강의실명 / 과정시작일 / 과정종료일 / 강의상태 / 수강인원
		List<Open_course> list = null;
		
		if (key == null || key.equals("")) {
			key = "all";
		}

		if (key.equals("all")) {
			list = this.open_courseService.print3_2(teacherId);
		} else {
			list = this.open_courseService.print3_2(key, value, teacherId);
		}

		model.addAttribute("course_list", list);
		model.addAttribute("totalCount", this.open_courseService.print3_2(teacherId).size());
		model.addAttribute("searchCount", list.size());
		
		return "teacher/teacher_4/teacher_4_1";
	}
	
	@RequestMapping(value={"/teacher_4_2"})	//페이징
	public String teacherList4_2(Model model, String openCourse_id, @ModelAttribute("key") String key, @ModelAttribute("value") String value) {
		//개설과정아이디 / 과정명 / 강의실명 / 과정시작일 / 과정종료일 / 강의상태 / 수강인원
		model.addAttribute("course_list", this.open_courseService.print3_2("opencourse_id", openCourse_id, teacherId));
		
		//개설과목아이디 / 과목명 / 과목시작일 / 과목종료일 / 교재 / 출결필기실기배점 / 시험날짜 / 성적등록인원
		if (key == null || key.equals("")) {
			key = "all";
		}
		
		List<Exams> list = null;

		if (key.equals("all")) {
			list = this.examsService.print2(openCourse_id, teacherId);
		} else {
			list = this.examsService.print2(key, value, openCourse_id, teacherId);
		}
		model.addAttribute("subject_list", list);
		model.addAttribute("totalCount", this.examsService.print2(openCourse_id, teacherId).size());
		model.addAttribute("searchCount", list.size());
		
		return "teacher/teacher_4/teacher_4_2";
	}
	
	@RequestMapping(value={"/teacher_4_3"})	//검색, 등록, 수정, 삭제, 페이징
	public String teacherList4_3(Model model, String openCourse_id, String openSubject_id, String exam_id, @ModelAttribute("key") String key, @ModelAttribute("value") String value) {
		//개설과정아이디 / 과정명 / 강의실명 / 과정시작일 / 과정종료일 / 강의상태 / 수강인원
		model.addAttribute("course_list", this.open_courseService.print3_2("opencourse_id", openCourse_id, teacherId));
		//개설과목아이디 / 과목명 / 과목시작일 / 과목종료일 / 교재 / 출결필기실기배점 / 시험날짜 / 성적등록인원
		model.addAttribute("subject_list", this.examsService.print2("openSubject_id", openSubject_id, openCourse_id, exam_id, teacherId));
		
		//수강생아이디 / 수강생명 / 전화번호 / 수료중도탈락여부 / 수료중도탈락날짜 / 출결필기실기점수 / 총점 / 시험날짜
		if (key == null || key.equals("")) {
			key = "all";
		}
		
		List<Exams> list = null;

		if (key.equals("all")) {
			list = this.examsService.print5(openCourse_id, openSubject_id, exam_id, teacherId);
		} else {
			list = this.examsService.print5(key, value, openCourse_id, openSubject_id, exam_id, teacherId);
		}
		model.addAttribute("student_list", list);
		model.addAttribute("totalCount", this.examsService.print5(openCourse_id, openSubject_id, exam_id, teacherId).size());
		model.addAttribute("searchCount", list.size());
		
		return "teacher/teacher_4/teacher_4_3";
	}
	@RequestMapping(value={"/teacher_4_3/insert"})
	public String teacherList4_3_insert(Model model, RedirectAttributes rttr, Exams e, String openCourse_id, String openSubject_id) {
		
		String txt = "fail";
		
		int result = this.examsService.insertScore(e);
		
		if(result == 1) {
			txt = "success";
		}
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/teacher/teacher_4_3?openCourse_id="+openCourse_id+"&openSubject_id="+openSubject_id+"&exam_id="+e.getExam_id();
		
	}
	@RequestMapping(value={"/teacher_4_3/update"})
	public String teacherList4_3_update(Model model, RedirectAttributes rttr, Exams e, String openCourse_id, String openSubject_id) {
		
		String txt = "fail";
		int result = this.examsService.updateScore(e);
		if(result == 1) {
			txt = "success";
		}
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/teacher/teacher_4_3?openCourse_id="+openCourse_id+"&openSubject_id="+openSubject_id+"&exam_id="+e.getExam_id();
	}
	@RequestMapping(value={"/teacher_4_3/delete"})
	public String teacherList4_3_delete(Model model, RedirectAttributes rttr, Exams e, String openCourse_id, String openSubject_id) {
		
		String txt = "fail";
		int result = this.examsService.removeScore(e);
		
		if(result == 1) {
			txt = "success";
		}
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/teacher/teacher_4_3?openCourse_id="+openCourse_id+"&openSubject_id="+openSubject_id+"&exam_id="+e.getExam_id();
	}

	// 교재 상세보기
	@RequestMapping("/book/info")
	public @ResponseBody Map<?, ?> infoBook(String isbn) throws IOException {

		String str = String.format("http://book.interpark.com/api/search.api?"
				+ "key=790818C2D3B8DFB5483E7ABEC92B35B752A61FA367C03C1FEBDF484FAECE0BF9"
				+ "&query=%s&queryType=isbn&output=json", isbn);

		URL url = new URL(str);

		ObjectMapper mapper = new ObjectMapper();
		Map<?, ?> temp = mapper.readValue(url.openStream(), Map.class);

		return temp;
	}
	
	@RequestMapping(value={"/logout"})
	public String teacherLogout(Model model, HttpSession session) {
		
		teacherId = null;
		
		return "redirect:/login/logout";
	}
	
	/*
	- 과정아이디 / 과정명 / 과목명 / 수강기간
	- 강사명 / 전화번호 / 등록일
	- 과목아이디 / 과목명
	- 개설과정아이디 / 과정명 / 과정시작일 / 과정종료일 / 강의실명 / 수강인원
	- 과목명 / 과목시작일 / 과목종료일 / 교재
	- 수강생명 / 전화번호 / 등록일 / 수료중도탈락 여부 / 수료중도탈락 날짜
	
	- 개설과정아이디 / 과정명 / 강의실명 / 과정시작일 / 과정종료일 / 강의상태 / 수강인원
	- 개설과목아이디 / 과목명 / 과목시작일 / 과목종료일 / 교재 / 출결필기실기배점 / 시험날짜 / 시험문제
	- 개설과목아이디 / 과목명 / 과목시작일 / 과목종료일 / 교재 / 출결필기실기배점 / 시험날짜 / 성적등록인원
	- 수강생아이디 / 수강생명 / 전화번호 / 수료중도탈락여부 / 수료중도탈락날짜 / 출결필기실기점수 / 총점 / 시험날짜
	 */
	
}
