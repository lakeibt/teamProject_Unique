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
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getCourseSyllabusInfo(code);
	}
	
	@Override
	public Map<String, Object> getCourseSyllabusList(String code) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getCourseSyllabusList(code);
	}
	
	@Override
	public int getGradeCnt(String id) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getGradeCnt(id);
	}

	@Override
	public List<Map<String, Object>> getGradeList(Map<String, Object> map) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getGradeList(map);
	}

	@Override
	public List<StudentStudyListVO> getDay() {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getDay();
	}
	@Override
	public int getStudyCnt(String id) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getStudyCnt(id);
	}

	@Override
	public List<Map<String, Object>> getStudyList(String id) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getStudyList(id);
	}

	@Override
	public List<Map<String, Object>> getCourseList(Map<String, Object> map) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getCourseList(map);
	}
	
	@Override
	public List<Map<String, Object>> getTimeTable(String id) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getTimeTable(id);
	}
	@Override
	public Map<String, Object> getStudentSimpleInfo(String id) {
		StudentDAO dao = sqlSession.getMapper(StudentDAO.class);
		return dao.getStudentSimpleInfo(id);
	}
}
