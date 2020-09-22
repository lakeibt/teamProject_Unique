package com.kosmo.uni.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.kosmo.uni.vo.UserVO;

// 로그인이 성공한 경우 자동으로 실행
public class UserLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Autowired
	EduService eduService;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		UserVO vo = (UserVO) authentication.getPrincipal();
		System.out.println("UserVO ==> " + vo);
		System.out.println("로그인 성공");
		String msg = authentication.getName() + "님 환영합니다.";
		request.setAttribute("msg", msg);
		request.getSession().setAttribute("name", authentication.getName());
		request.getSession().setAttribute("memId", vo.getUserId());
		request.getSession().setAttribute("auth", vo.getAuthorities());
		
		if(vo.getAuthorities().toString().equals("[ROLE_PROFESSOR]")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/professor/main");
			dispatcher.forward(request, response);
		} else if(vo.getAuthorities().toString().equals("[ROLE_ADMIN]")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/main");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/guest/myPage");
			dispatcher.forward(request, response);
		}
		
	}
}
