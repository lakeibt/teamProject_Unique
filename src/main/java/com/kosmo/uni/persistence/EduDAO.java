package com.kosmo.uni.persistence;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kosmo.uni.vo.StudentVO;

public interface EduDAO {

	public int insertUser(Map<String, String> map);

	public void test(HttpServletRequest req, Model model);
	
	public Map<String, Object> selectUser(String id);
	// 아이디 체크
	public int studentIdCheck(String id);
	// 학생 정보 
	public StudentVO getStudentInfo(String id);
}
