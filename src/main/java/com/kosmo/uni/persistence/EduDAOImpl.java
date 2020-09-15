package com.kosmo.uni.persistence;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.kosmo.uni.vo.StudentVO;
import com.kosmo.uni.vo.TestVO;

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
	public void test(HttpServletRequest req, Model model) {
		TestVO tvo = sqlSession.selectOne(EduDAO + "test", "g1234");
		System.out.println(tvo);
	}

	@Override
	public Map<String, Object> selectUser(String id) {
		Map<String, Object> map = sqlSession.selectOne(EduDAO + "selectUser", id);
		return map;
	}
	@Override
	public int studentIdCheck(String strId) {
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dao.studentIdCheck(strId);
	}
	@Override
	public StudentVO getStudentInfo(String id) {
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dao.getStudentInfo(id);
	}

	@Override
	public int updateStudentInfo(StudentVO vo) {
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dao.updateStudentInfo(vo);
	}
}
