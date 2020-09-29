package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.MessageVO;
import com.kosmo.uni.vo.StudentStudyListVO;
import com.kosmo.uni.vo.StudentVO;

public interface StudentDAO {
	// 아이디 체크
	public int studentIdCheck(String id);
	// 학생 정보 
	public StudentVO getStudentInfo(String id);
	// 학생 정보 수정
	public int updateStudentInfo(StudentVO vo);
	// 강의 목록 갯수
	public int getCourseCnt();
	// 강의 목록
	public List<Map<String, Object>> getCourseList(Map<String, Object> map);
	// 강의 계획서 정보
	public Map<String, Object> getCourseSyllabusInfo(String code);
	// 강의 계획서 주차 목록
	public Map<String, Object> getCourseSyllabusList(String code);
	// 강의 목록 (admin페이지)
	public List<CourseVO> getCourseList();
	// 학생 성적 목록 갯수
	public int getGradeCnt(String id);
	// 성적 목록
	public List<Map<String, Object>> getGradeList(Map<String, Object> map);
	// 요일
	public List<StudentStudyListVO> getDay();
	// 학생 강의 갯수
	public int getStudyCnt(String id);
	// 학생 강의 목록
	public List<Map<String, Object>> getStudyList(Map<String, Object> map);
	// 학생 강의 시간표
	public List<Map<String, Object>> getTimeTable(Map<String, Object> map);
	// 마이페이지 학생 정보
	public Map<String, Object> getStudentSimpleInfo(String id);
	// 받은 쪽지 갯수
	public int getMessageCnt(String id);
	// 보낸 쪽지 갯수
	public int getMessageCnt_send(String id);
	// 받은 쪽지 목록
	public List<MessageVO> getMessageList(Map<String, Object> map);
	// 받은 쪽지 목록
	public List<MessageVO> getMessageList_send(Map<String, Object> map);
	// 쪽지 상세 조회
	public MessageVO getMessage(int num);
}
