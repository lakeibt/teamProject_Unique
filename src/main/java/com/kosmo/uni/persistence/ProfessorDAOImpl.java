package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.CalendarVO;
import com.kosmo.uni.vo.CoursePlanVO;
import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.HumanVO;
import com.kosmo.uni.vo.InfoVO;
import com.kosmo.uni.vo.MessageVO;

@Repository
public class ProfessorDAOImpl implements ProfessorDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int getInfoCnt() {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.getInfoCnt();
	}
	@Override
	public List<InfoVO> getInfoList(Map<String, Object> map) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.getInfoList(map);
	}

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
	public Map<String, Object> getProfessorProfile(String id) {
		return sqlSession.selectOne("com.kosmo.uni.persistence.ProfessorDAO.getProfessorProfile", id);
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
	@Override
	public int getCourseCnt(String p_name) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.getCourseCnt(p_name);
	}
	@Override
	public List<CourseVO> getCourseList(Map<String, Object> map) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.getCourseList(map);
	}
	@Override
	public InfoVO getInfoDetail(int num) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.getInfoDetail(num);
	}
	@Override
	public int updateMyPage(HumanVO vo) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.updateMyPage(vo);
	}
	@Override
	public int insertSyllabus(CoursePlanVO vo) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.insertSyllabus(vo);
	}
	@Override
	public int insertGradePoint(CoursePlanVO vo) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.insertGradePoint(vo);
	}
	@Override
	public int updateCoursePlanChk(Map<String, Object> map) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.updateCoursePlanChk(map);
	}
	@Override
	public CoursePlanVO getCoursePlan(String co_code) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.getCoursePlan(co_code);
	}
	@Override
	public int updateSyllabus(CoursePlanVO vo) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.updateSyllabus(vo);
	}
	@Override
	public int updateGradePoint(CoursePlanVO vo) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.updateGradePoint(vo);
	}
	@Override
	public List<CalendarVO> getCalendarList(String id) {
		ProfessorDAO dao = sqlSession.getMapper(ProfessorDAO.class);
		return dao.getCalendarList(id);
	}



}
