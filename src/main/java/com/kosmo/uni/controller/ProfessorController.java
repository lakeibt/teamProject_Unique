package com.kosmo.uni.controller;


import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosmo.uni.persistence.ProfessorDAO;
import com.kosmo.uni.service.ProfessorService;
import com.kosmo.uni.vo.CoursePlanVO;

@Controller
public class ProfessorController {
	private static final Logger logger = LoggerFactory.getLogger(ProfessorController.class);
	
	@Autowired
	ProfessorService proService;
	
	@Autowired
	ProfessorDAO proDAO;
	
	// 메인
	@RequestMapping("/professor/main")
	public String pro_main(HttpServletRequest req, Model model) {
		logger.info("url ==> main");
		proService.infoList(req, model);
		proService.courseList(req, model);
		
		return "professor/main";
	}

	// 메인  : 공지사항
	@RequestMapping("/professor/info")
	public String pro_info(HttpServletRequest req, Model model) {
		logger.info("url ==> info");
		
		proService.infoDetail(req, model);
		
		return "professor/info";
	}
	
	
	// 내정보
	@RequestMapping("/professor/myPage")
	public String pro_myPage(HttpServletRequest req, Model model) {
		logger.info("url ==> myPage");
		proService.getProfessorProfile(req, model);
		return "professor/myPage";
	}

	// 정보 수정
	@RequestMapping("/professor/myPageModify")
	public String myPageModify(HttpServletRequest req, Model model) {
		logger.info("url ==> myPageModify");
		
		proService.myPageModify(req, model);
		
		return "professor/myPage_modify";
	}
	
	// 강의관리
	@RequestMapping("/professor/course")
	public String pro_course(HttpServletRequest req, Model model) {
		logger.info("url ==> course");
		
		proService.courseList(req, model);
		
		return "professor/course";
	}
	
	// 강의 계획서 등록폼
	@RequestMapping("/professor/course_plan_addForm")
	public String pro_course_plan_addFrom(HttpServletRequest req, Model model) {
		logger.info("url ==> course_plan_addForm");
		
		String co_code = req.getParameter("co_code");
		model.addAttribute("co_code", co_code);
		
		return "professor/course_plan_addForm";
	}
	
	// 계획서 등록
	@RequestMapping("/professor/coursePlan_add")
	public String pro_coursePlan_add(HttpServletRequest req, Model model) {
		logger.info("url ==> pro_coursePlan_add");
		
		proService.coursePlanAdd(req, model);
		
		return "professor/course_plan_add";
	}
	
	// 계획서 가져오기
	@RequestMapping("/professor/course_plan")
	public String pro_course_plan(HttpServletRequest req, Model model) {
		logger.info("url ==> course_plan");
		
		proService.coursPlan(req, model);
		
		return "professor/course_plan";
	}
	
	// 계획서 수정
	@RequestMapping("/professor/coursePlan_modify")
	public String pro_coursePlan_modify(HttpServletRequest req, Model model) {
		logger.info("url ==> coursePlan_modify");
		
		proService.coursePlanModify(req, model);
		
		return "professor/course_plan_modify";
	}
	
	
	// 강의수정
	@RequestMapping("/professor/course_modify")
	public String pro_course_modify() {
		logger.info("url ==> course_modify");
		
		return "professor/course_modify";
	}
	
	// 강의 삭제
	@RequestMapping("/professor/course_delete")
	public String pro_course_delete() {
		logger.info("url ==> course_delete");
		
		return "professor/course_delete";
	}
	
	// 성적관리
	@RequestMapping("/professor/score")
	public String pro_score() {
		logger.info("url ==> score");
		
		return "professor/score";
	}
	
	// 성적등록
	@RequestMapping("/professor/score_register")
	public String pro_score_register() {
		logger.info("url ==> score_register");
		
		return "professor/score_register";
	}
	
	// 성적수정
	@RequestMapping("/professor/score_modify")
	public String pro_score_modify() {
		logger.info("url ==> score_modify");
		
		return "professor/score_modify";
	}
	
	// 쪽지 간단히 가져오기
	@RequestMapping("/professor/messageSimple")
	public String pro_messageSimple(HttpServletRequest req, Model model) {
		logger.info("url ==> messageSimple");
		
		proService.messageSimple(req, model);
		return "professor/messageList_simple";
	}
	
	// 쪽지 전체 가져오기
	@RequestMapping("/professor/messageList_form")
	public String pro_messageList_form(HttpServletRequest req, Model model) {
		logger.info("url ==> messageList_form");
		proService.messageList(req, model);
		
		return "professor/messageList_form";
	}

	// 쪽지 상세보기
	@RequestMapping("/professor/message_form")
	public String pro_message_form(HttpServletRequest req, Model model) {
		logger.info("url ==> message_form");
		
		proService.message(req, model);
		return "professor/message_form";
	}
	
	// 쪽지 보내기 폼
	@RequestMapping("/professor/message_send_form")
	public String pro_message_send_form(HttpServletRequest req, Model model) {
		logger.info("url ==> message_send_form");
		
		proService.addresseeList(req, model);
		return "professor/message_send_form";
	}	
	@RequestMapping("/professor/message_reply_form")
	public String pro_message_reply_form(HttpServletRequest req, Model model) {
		logger.info("url ==> message_reply_form");
		
		model.addAttribute("sender_id", req.getParameter("sender_id"));
		model.addAttribute("sender_name", req.getParameter("sender_name"));
		return "professor/message_reply_form";
	}	
	@RequestMapping("/professor/message_send_authenList")
	public String pro_message_send_authenList(HttpServletRequest req, Model model) {
		logger.info("url ==> message_send_authenList");
		
		proService.addresseeList(req, model);
		return "professor/message_send_authenList";
	}	
	// 쪽지 보내기
	@ResponseBody
	@RequestMapping("/professor/proMessageSend")
	public int pro_messageSend(HttpServletRequest req, Model model) {
		logger.info("url ==> messageSend");
		
		int insertCnt = proService.messageSend(req, model);
		return insertCnt;
	}	
	
	@ResponseBody
	@RequestMapping("/professor/proMessageReply")
	public int pro_messageReply(HttpServletRequest req, Model model) {
		logger.info("url ==> messageReply");
		
		int insertCnt = proService.messageReply(req, model);
		return insertCnt;
	}
}
