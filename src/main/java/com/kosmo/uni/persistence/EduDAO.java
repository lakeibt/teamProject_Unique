package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.StudentStudyListVO;
import com.kosmo.uni.vo.StudentVO;

public interface EduDAO {

	public int insertUser(Map<String, String> map);
	
	public Map<String, Object> selectUser(String id);
	// 아이디 체크
	public int studentIdCheck(String id);
	// 학생 정보 
	public StudentVO getStudentInfo(String id);
	// 학생 정보 수정
	public int updateStudentInfo(StudentVO vo);
	// 강의 목록 갯수
	public int getCourseCnt();
	// 강의 목록
	public List<CourseVO> getCourseList(Map<String, Object> map);
	// 강의 계획서 정보
	public Map<String, Object> getCourseSyllabusInfo(String code);
	// 강의 계획서 주차 목록
	public Map<String, Object> getCourseSyllabusList(String code);
	// 강의 목록 (admin페이지)
	public List<CourseVO> getCourseList();
	// 성적 목록 갯수
	public int getGradeCnt();
	// 성적 목록
	public List<CourseVO> getGradeList(Map<String, Object> map);
	// 요일
	public List<StudentStudyListVO> getDay();
	// 학생 강의 갯수
	public int getStudyCnt();
	// 학생 강의 목록
	public List<StudentStudyListVO> getStudyList(Map<String, Object> map);
}
