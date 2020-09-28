package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

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

	// 쪽지 미리보기
	public List<MessageVO> getMessageList_notRead(Map<String, Object> map);
	
	// 쪽지 보내기
	public int insertMessage(MessageVO vo);
}
