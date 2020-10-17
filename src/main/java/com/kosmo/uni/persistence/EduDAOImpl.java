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

	@Override
	public int findId(String position, String id) {
		if(position.equals("학생")) return sqlSession.selectOne(EduDAO + "findIdStu", id);
		else if(position.equals("교수")) return sqlSession.selectOne(EduDAO + "findIdPro", id);
		else if(position.equals("직원")) return sqlSession.selectOne(EduDAO + "findIdAdm", id);
		else return 0;
	}

	@Override
	public int confirmId(String position, Map<String, String> map) {
		if(position.equals("학생")) return sqlSession.selectOne(EduDAO + "confirmIdStu", map);
		else if(position.equals("교수")) return sqlSession.selectOne(EduDAO + "confirmIdPro", map);
		else if(position.equals("직원")) return sqlSession.selectOne(EduDAO + "confirmIdAdm", map);
		else return 0;
	}

	@Override
	public int setPwd(Map<String, String> map) {
		String position = map.get("position");
		if(position.equals("학생")) return sqlSession.update(EduDAO + "setPwdStu", map);
		else if(position.equals("교수")) return sqlSession.update(EduDAO + "setPwdPro", map);
		else if(position.equals("직원")) return sqlSession.update(EduDAO + "setPwdAdm", map);
		else return 0;
	}
}
