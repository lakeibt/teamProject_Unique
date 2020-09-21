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

	@Override
	public int getCourseCnt() {
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dao.getCourseCnt();
	}

	@Override
	public List<CourseVO> getCourseList(Map<String, Object> map) {
		List<CourseVO> dtos;
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dtos = dao.getCourseList(map);
	}
	@Override
	public int getGradeCnt() {
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dao.getGradeCnt();
	}

	@Override
	public List<CourseVO> getGradeList(Map<String, Object> map) {
		List<CourseVO> dtos;
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dtos = dao.getGradeList(map);
	}

	@Override
	public List<StudentStudyListVO> getDay() {
		List<StudentStudyListVO> dtos;
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dtos = dao.getDay();
	}
	@Override
	public int getStudyCnt() {
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dao.getStudyCnt();
	}

	@Override
	public List<StudentStudyListVO> getStudyList(Map<String, Object> map) {
		List<StudentStudyListVO> dtos;
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dtos = dao.getStudyList(map);
	}
}
