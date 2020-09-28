package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import com.kosmo.uni.vo.MessageVO;

public interface ProfessorDAO {
	
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
	
	// 교수 프로필 정보 가져오기
	public Map<String, Object> getProfessorProfile(String id);

}
