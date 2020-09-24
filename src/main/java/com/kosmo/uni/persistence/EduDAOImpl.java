package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.StudentStudyListVO;
import com.kosmo.uni.vo.StudentVO;

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
	public Map<String, Object> selectUser(String id) {
		Map<String, Object> map = sqlSession.selectOne(EduDAO + "selectUser", id);
		return map;
	}
}
