package com.kosmo.uni.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		stuService.studentinfo(req, model);
		return "student/course_timeTable";
	}
	
	@RequestMapping("/student/course_timeTableInfo")
	public String stu_course_timeTableInfo(HttpServletRequest req, Model model) {
		logger.info("url ==> course_timeTableInfo");
		
		stuService.studentTimeTable(req, model);
		return "student/course_timeTableInfo";
	}
	
	@RequestMapping("/student/course")
	public String stu_course(HttpServletRequest req, Model model) {
		logger.info("url ==> course");
		
		stuService.studentinfo(req, model);
		return "student/course";
	}

	@RequestMapping("/student/courseInfo")
	public String stu_courseInfo(HttpServletRequest req, Model model) {
		logger.info("url ==> course");
		
		stuService.studentList(req, model);
		return "student/courseInfo";
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

	// 쪽지 간단히 가져오기
	@RequestMapping("/student/messageSimple")
	public String stu_messageSimple(HttpServletRequest req, Model model) {
		logger.info("url ==> messageSimple");
		
		stuService.messageSimple(req, model);
		return "student/messageList_simple";
	}
	
	// 쪽지 전체 가져오기
	@RequestMapping("/student/messageList_form")
	public String stu_messageList_form(HttpServletRequest req, Model model) {
		logger.info("url ==> messageList_form");
		
		stuService.messageList(req, model);
		return "student/messageList_form";
	}

	// 쪽지 상세보기
	@RequestMapping("/student/message_form")
	public String stu_message_form(HttpServletRequest req, Model model) {
		logger.info("url ==> message_form");
		
		stuService.message(req, model);
		return "student/message_form";
	}
	
	// 쪽지 보내기 폼
	@RequestMapping("/student/message_send_form")
	public String stu_message_send_form(HttpServletRequest req, Model model) {
		logger.info("url ==> message_send_form");
		
		stuService.addresseeList(req, model);
		return "student/message_send_form";
	}	
	@RequestMapping("/student/message_reply_form")
	public String stu_message_reply_form(HttpServletRequest req, Model model) {
		logger.info("url ==> message_reply_form");
		
		model.addAttribute("sender_id", req.getParameter("sender_id"));
		model.addAttribute("sender_name", req.getParameter("sender_name"));
		return "student/message_reply_form";
	}	
	@RequestMapping("/student/message_send_authenList")
	public String stu_message_send_authenList(HttpServletRequest req, Model model) {
		logger.info("url ==> message_send_authenList");
		
		stuService.addresseeList(req, model);
		return "student/message_send_authenList";
	}	

	// 쪽지 보내기
	@ResponseBody
	@RequestMapping("/student/messageSend")
	public int stu_messageSend(HttpServletRequest req, Model model) {
		logger.info("url ==> messageSend");
		
		int insertCnt = stuService.messageSend(req, model);
		return insertCnt;
	}
	
	// 쪽지 답장하기
	@ResponseBody
	@RequestMapping("/student/messageReply")
	public int stu_messageReply(HttpServletRequest req, Model model) {
		logger.info("url ==> messageReply");
		
		int insertCnt = stuService.messageReply(req, model);
		return insertCnt;
	}
}
