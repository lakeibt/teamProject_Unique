package com.kosmo.uni.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.uni.service.EduService;
import com.kosmo.uni.service.StudentService;

@Controller
public class StudentController {
	
private static final Logger logger = LoggerFactory.getLogger(StudentController.class);
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;  // 비밀번호 암호화 객체
	
	@Autowired
	StudentService stuService;
	
	@RequestMapping("/student/employmentnext")
	public String gue_employmentnext() {
		logger.info("url ==> employmentnext");
		
		return "student/employmentnext";
	}
	
	@RequestMapping("/student/employmentnext2")
	public String gue_employmentnext2() {
		logger.info("url ==> employmentnext2");
		
		return "student/employmentnext2";
	}
	
	@RequestMapping("/student/contest")
	public String gue_contest() {
		logger.info("url ==> contest");
		
		return "student/contest";
	}
	
	@RequestMapping("/student/contestnext")
	public String gue_contestnext() {
		logger.info("url ==> contestnext");
		
		return "student/contestnext";
	}
	
	@RequestMapping("/student/contestnext2")
	public String gue_contestnext2() {
		logger.info("url ==> contestnext2");
		
		return "student/contestnext2";
	}
	
	@RequestMapping("/student/message")
	public String gue_message() {
		logger.info("url ==> message");
		
		return "student/message";
	}
	
	@RequestMapping("/student/myPage")
	public String gue_myPage() {
		logger.info("url ==> myPage");
		
		return "student/myPage";
	}
	
	@RequestMapping("/student/myPage_modify")
	public String gue_myPage_modify(HttpServletRequest req, Model model) {
		logger.info("url ==> myPage_modify");
		
		stuService.studentinfo(req, model);
		return "student/myPage_modify";
	}
	
	@RequestMapping("/student/myPage_modifyPro")
	public String gue_myPage_modifyPro(HttpServletRequest req, Model model) {
		logger.info("url ==> myPage_modifyPro");
		stuService.studentModifyPro(req, model);
		return "student/myPage_modifyPro";
	}
	
	@RequestMapping("/student/course_register")
	public String gue_course_register(HttpServletRequest req, Model model) {
		logger.info("url ==> course_register");
		stuService.courseList(req, model);
		return "student/course_register";
	}
	
	@RequestMapping("/student/course_timeTable")
	public String gue_course_timeTable(HttpServletRequest req, Model model) {
		logger.info("url ==> course_timeTable");
		
		stuService.studentTimeTable(req, model);
		return "student/course_timeTable";
	}
	
	@RequestMapping("/student/course")
	public String gue_course(HttpServletRequest req, Model model) {
		logger.info("url ==> course");
		
		stuService.courseList(req, model);
		return "student/course";
	}
	@RequestMapping("/student/course_syllabus")
	public String gue_course_syllabus(HttpServletRequest req, Model model) {
		logger.info("url ==> course_syllabus");
		
		stuService.course_syllabus(req, model);
		return "student/course_syllabus";
	}
	
	@RequestMapping("/student/course_syllabus2")
	public String gue_course_syllabus2(HttpServletRequest req, Model model) {
		logger.info("url ==> course_syllabus2");
		
		stuService.course_syllabus(req, model);
		return "student/course_syllabus2";
	}
	
	@RequestMapping("/student/score")
	public String gue_score(HttpServletRequest req, Model model) {
		logger.info("url ==> score");
		stuService.studentinfo(req, model);
		return "student/score";
	}
	@RequestMapping("/student/scoreInfo")
	public String gue_scoreInfo(HttpServletRequest req, Model model) {
		logger.info("url ==> scoreInfo");
		stuService.studentGradeList(req, model);
		return "student/scoreInfo";
	}
	@RequestMapping("/student/employment")
	public String gue_employment() {
		logger.info("url ==> employment");
		
		return "student/employment";
	}

}
