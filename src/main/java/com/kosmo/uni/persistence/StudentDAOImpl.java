package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.StudentStudyListVO;
import com.kosmo.uni.vo.StudentVO;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int studentIdCheck(String strId) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.studentIdCheck(strId);
	}
	@Override
	public StudentVO getStudentInfo(String id) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getStudentInfo(id);
	}

	@Override
	public int updateStudentInfo(StudentVO vo) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.updateStudentInfo(vo);
	}

	@Override
	public int getCourseCnt() {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getCourseCnt();
	}

	@Override
	public List<CourseVO> getCourseList() {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getCourseList();
	}

	@Override
	public Map<String, Object> getCourseSyllabusInfo(String code) {
		Map<String, Object> dtos;
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dtos = dao.getCourseSyllabusInfo(code);
	}
	
	@Override
	public Map<String, Object> getCourseSyllabusList(String code) {
		Map<String, Object> dtos;
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dtos = dao.getCourseSyllabusList(code);
	}
	
	@Override
	public int getGradeCnt() {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getGradeCnt();
	}

	@Override
	public List<CourseVO> getGradeList(Map<String, Object> map) {
		List<CourseVO> dtos;
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dtos = dao.getGradeList(map);
	}

	@Override
	public List<StudentStudyListVO> getDay() {
		List<StudentStudyListVO> dtos;
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dtos = dao.getDay();
	}
	@Override
	public int getStudyCnt() {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getStudyCnt();
	}

	@Override
	public List<StudentStudyListVO> getStudyList(Map<String, Object> map) {
		List<StudentStudyListVO> dtos;
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dtos = dao.getStudyList(map);
	}

	@Override
	public List<CourseVO> getCourseList(Map<String, Object> map) {
		List<CourseVO> dtos;
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dtos = dao.getCourseList(map);
	}
}
