package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.GradeVO;
import com.kosmo.uni.vo.CoursePlanVO;
import com.kosmo.uni.vo.HumanVO;
import com.kosmo.uni.vo.InfoVO;
import com.kosmo.uni.vo.LectureVO;
import com.kosmo.uni.vo.MessageVO;

public interface ProfessorDAO {
	
	
	// 공지사항
	public int getInfoCnt();
	public List<InfoVO> getInfoList(Map<String, Object> map);
	public InfoVO getInfoDetail(int num);
	
	// 강의목록
	public int getCourseCnt(String p_name);
	public List<CourseVO> getCourseList(Map<String, Object> map);
	
	// 내정보 수정
	public int updateMyPage(HumanVO vo);
	
	// 강의계획서 등록, 수정
	public int insertSyllabus(CoursePlanVO vo);
	public int insertGradePoint(CoursePlanVO vo);
	public int updateCoursePlanChk(Map<String, Object> map);
	public int updateSyllabus(CoursePlanVO vo);
	public int updateGradePoint(CoursePlanVO vo);
	public CoursePlanVO getCoursePlan(String co_code);
	public int updateGradeChk(Map<String, Object> map);
	
	// 성적 입력할 인원
	public List<GradeVO> getGradeList(String co_code);
	public int insertGradeScore(GradeVO vo);
	public List<GradeVO> getGradeList_modify(String co_code);
	public int chkGrade(GradeVO vo);
	public int updateGradeScore(GradeVO vo);
	
	
	// 주차별 강의 확인
	public int lectureChk(Map<String, Object> map);
	// 해당 강의 가져오기
	public LectureVO getLecture(Map<String, Object> map);
	// 수업 등록
	public int insertLecture(LectureVO vo);
	// 수업 수정
	public int updateLecture(LectureVO vo);
	// 수업 삭제
	public int deleteLecture(int le_num);
	
	
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
	
	// 교수 프로필 정보 가져오기
	public Map<String, Object> getProfessorProfile(String id);

	// 쪽지 미리보기
	public List<MessageVO> getMessageList_notRead(Map<String, Object> map);
	
	// 쪽지 보내기
	public int insertMessage(MessageVO vo);
	
	// 강의 갯수
	public int getCourseProCnt(String id);
	
	// 강의 리스트
	public List<CourseVO> getCourseProList(Map<String, Object> map);
	
	public int insertMessage(Map<String, Object> map);
	
	public List<Map<String, Object>> authenList(String authen);
	
	public String getReceiverName(Map<String, Object> map);
}
