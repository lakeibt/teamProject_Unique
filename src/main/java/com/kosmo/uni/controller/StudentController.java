package com.kosmo.uni.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.uni.service.StudentService;

@Controller
public class StudentController {
	
private static final Logger logger = LoggerFactory.getLogger(StudentController.class);
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;  // 비밀번호 암호화 객체
	
	@Autowired
	StudentService stuService;
	
	@RequestMapping("/student/employmentnext")
	public String stu_employmentnext() {
		logger.info("url ==> employmentnext");
		
		return "student/employmentnext";
	}
	
	@RequestMapping("/student/employmentnext2")
	public String stu_employmentnext2() {
		logger.info("url ==> employmentnext2");
		
		return "student/employmentnext2";
	}
	
	@RequestMapping("/student/contest")
	public String stu_contest() {
		logger.info("url ==> contest");
		
		return "student/contest";
	}
	
	@RequestMapping("/student/contestnext")
	public String stu_contestnext() {
		logger.info("url ==> contestnext");
		
		return "student/contestnext";
	}
	
	@RequestMapping("/student/contestnext2")
	public String stu_contestnext2() {
		logger.info("url ==> contestnext2");
		
		return "student/contestnext2";
	}
	
	@RequestMapping("/student/message")
	public String stu_message() {
		logger.info("url ==> message");
		
		return "student/message";
	}
	
	@RequestMapping("/student/myPage")
	public String stu_myPage(HttpServletRequest req, Model model) {
		logger.info("url ==> myPage");
		stuService.studentSimpleInfo(req, model);
		return "student/myPage";
	}
	
	@RequestMapping("/student/myPage_modify")
	public String stu_myPage_modify(HttpServletRequest req, Model model) {
		logger.info("url ==> myPage_modify");
		stuService.studentinfo(req, model);
		return "student/myPage_modify";
	}
	
	@RequestMapping("/student/myPage_modifyPro")
	public String stu_myPage_modifyPro(HttpServletRequest req, Model model) {
		logger.info("url ==> myPage_modifyPro");
		stuService.studentModifyPro(req, model);
		return "student/myPage_modifyPro";
	}
	
	@RequestMapping("/student/course_register")
	public String stu_course_register(HttpServletRequest req, Model model) {
		logger.info("url ==> course_register");
		stuService.courseList(req, model);
		return "student/course_register";
	}
	
	@RequestMapping("/student/course_timeTable")
	public String stu_course_timeTable(HttpServletRequest req, Model model) {
		logger.info("url ==> course_timeTable");
		
		stuService.studentTimeTable(req, model);
		return "student/course_timeTable";
	}
	
	@RequestMapping("/student/course")
	public String stu_course(HttpServletRequest req, Model model) {
		logger.info("url ==> course");
		
		stuService.courseList(req, model);
		return "student/course";
	}
	@RequestMapping("/student/course_syllabus")
	public String stu_course_syllabus(HttpServletRequest req, Model model) {
		logger.info("url ==> course_syllabus");
		
		stuService.course_syllabus(req, model);
		return "student/course_syllabus";
	}
	
	@RequestMapping("/student/course_syllabus2")
	public String stu_course_syllabus2(HttpServletRequest req, Model model) {
		logger.info("url ==> course_syllabus2");
		
		stuService.course_syllabus(req, model);
		return "student/course_syllabus2";
	}
	
	@RequestMapping("/student/score")
	public String stu_score(HttpServletRequest req, Model model) {
		logger.info("url ==> score");
		stuService.studentinfo(req, model);
		return "student/score";
	}
	@RequestMapping("/student/scoreInfo")
	public String stu_scoreInfo(HttpServletRequest req, Model model) {
		logger.info("url ==> scoreInfo");
		stuService.studentGradeList(req, model);
		return "student/scoreInfo";
	}
	@RequestMapping("/student/employment")
	public String stu_employment() {
		logger.info("url ==> employment");
		
		return "student/employment";
	}

}
