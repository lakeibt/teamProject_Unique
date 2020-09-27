package com.kosmo.uni.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EduDAOImpl implements EduDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	String EduDAO = "com.kosmo.uni.persistence.EduDAO.";

	@Override
	public int insertUser(Map<String, String> map) {
		int cnt = sqlSession.insert(EduDAO + "insertUser", map);
		return cnt;
	}

	@Override
	public Map<String, Object> selectSUser(String id) {
		Map<String, Object> map = sqlSession.selectOne(EduDAO + "selectSUser", id);
		return map;
	}
	
	@Override
	public Map<String, Object> selectPUser(String id) {
		Map<String, Object> map = sqlSession.selectOne(EduDAO + "selectPUser", id);
		return map;
	}
	
	@Override
	public Map<String, Object> selectAUser(String id) {
		Map<String, Object> map = sqlSession.selectOne(EduDAO + "selectAUser", id);
		return map;
	}
}
