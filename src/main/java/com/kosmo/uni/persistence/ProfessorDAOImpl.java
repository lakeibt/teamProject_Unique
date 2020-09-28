package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.MessageVO;

@Repository
public class ProfessorDAOImpl implements ProfessorDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public int getMessageCnt(String id) {
		return sqlSession.selectOne("com.kosmo.uni.persistence.ProfessorDAO.getMessageCnt", id);
	}
	@Override
	public int getMessageCnt_send(String id) {
		return sqlSession.selectOne("com.kosmo.uni.persistence.ProfessorDAO.getMessageCnt_send", id);
	}
	@Override
	public int getMessageCnt_notRead(String id) {
		return sqlSession.selectOne("com.kosmo.uni.persistence.ProfessorDAO.getMessageCnt_notRead", id);
	}
	
	@Override
	public List<MessageVO> getMessageList(Map<String, Object> map) {
		return sqlSession.selectList("com.kosmo.uni.persistence.ProfessorDAO.getMessageList", map);
	}
	@Override
	public List<MessageVO> getMessageList_send(Map<String, Object> map) {
		return sqlSession.selectList("com.kosmo.uni.persistence.ProfessorDAO.getMessageList_send", map);
	}

	@Override
	public MessageVO getMessage(int num) {
		return sqlSession.selectOne("com.kosmo.uni.persistence.ProfessorDAO.getMessage", num);
	}
	
	@Override
	public int updateReadChk(int num) {
		return sqlSession.update("com.kosmo.uni.persistence.ProfessorDAO.updateReadChk", num);
	}
	@Override
	public List<MessageVO> getMessageList_notRead(Map<String, Object> map) {
		return sqlSession.selectList("com.kosmo.uni.persistence.ProfessorDAO.getMessageList_notRead", map);
	}
	@Override
	public int insertMessage(MessageVO vo) {
		return sqlSession.insert("com.kosmo.uni.persistence.ProfessorDAO.insertMessage", vo);
	}


}
