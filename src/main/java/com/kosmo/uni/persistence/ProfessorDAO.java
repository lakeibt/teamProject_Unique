package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.AdminVO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.MessageVO;

public interface ProfessorDAO {
	
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
