package com.kosmo.uni.persistence;

import java.util.ArrayList;
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
	// 학생 강의 신청 목록(학생 강의 목록) -- 2020년 2학기만
	public List<Map<String, Object>> getRegisterCourse(String id);
	public int selectTimetable(String id); // 수강테이블에 학생 있는지 확인
	public int insertTimetable(Map<String, Object> map); // 신규 강의 테이블 생성 > 학생 - 시간표 연결
	public int updateTimetable(Map<String, Object> map); // 수강 신청 > 강의 목록 추가
	public int deleteTimetable(Map<String, Object> map); // 수강 취소 > 강의 목록 삭제
	public int plueCourseNumber(String code); // 강의 인원 수 증가
	public int minusCourseNumber(String code); // 강의 인원 수 감소
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
	public void updateView(String sql);
	// 마이페이지 학생 정보
	public Map<String, Object> getStudentSimpleInfo(String id);
	// 받은 쪽지 갯수
	public int getMessageCnt(String id);
	// 보낸 쪽지 갯수
	public int getMessageCnt_send(String id);
	// 안읽은 쪽지 갯수
	public int getMessageCnt_notRead(String id);
	// 받은 쪽지 목록
	public List<MessageVO> getMessageList(Map<String, Object> map);
	// 받은 쪽지 목록
	public List<MessageVO> getMessageList_send(Map<String, Object> map);
	// 쪽지 읽음 표시
	public int updateReadChk(int num);
	// 쪽지 상세 조회
	public MessageVO getMessage(int num);
	// 쪽지 미리보기
	public List<MessageVO> getMessageList_notRead(Map<String, Object> map);
	// 쪽지 보내기
	public int insertMessage(Map<String, Object> map);
	public List<Map<String, Object>> authenList(String authen);
	public String getReceiverName(Map<String, Object> map);
	// 교수 이름 가져오기
	public ArrayList<String> getProfessorName();
}
