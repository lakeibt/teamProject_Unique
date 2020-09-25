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
	public List<Map<String, Object>> getCourseList(Map<String, Object> map) {
		List<Map<String, Object>> dtos;
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dtos = dao.getCourseList(map);
	}

	@Override
	public Map<String, Object> getCourseSyllabusInfo(String code) {
		Map<String, Object> dtos;
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dtos = dao.getCourseSyllabusInfo(code);
	}
	
	@Override
	public Map<String, Object> getCourseSyllabusList(String code) {
		Map<String, Object> dtos;
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dtos = dao.getCourseSyllabusList(code);
	}
	
	@Override
	public int getGradeCnt(String id) {
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dao.getGradeCnt(id);
	}

	@Override
	public List<Map<String, Object>> getGradeList(Map<String, Object> map) {
		List<Map<String, Object>> dtos;
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
	public int getStudyCnt(String id) {
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dao.getStudyCnt(id);
	}

	@Override
	public List<Map<String, Object>> getStudyList(String id) {
		List<Map<String, Object>> dtos;
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dtos = dao.getStudyList(id);
	}

	@Override
	public List<Map<String, Object>> getTimeTable(String id) {
		List<Map<String, Object>> dtos;
		EduDAO dao = sqlSession.getMapper(EduDAO.class);
		return dtos = dao.getTimeTable(id);
	}
}
