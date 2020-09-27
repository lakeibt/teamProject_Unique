package com.kosmo.uni.persistence;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.Manager;
import com.kosmo.uni.vo.StudentVO;


@Repository
public class AndDAOImpl implements AndDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public HashMap<String, String> confirmIdPwdStu(String id) {
		AndDAO dao = sqlSession.getMapper(AndDAO.class);
		
		return dao.confirmIdPwdStu(id);
	}
	
	@Override
	public HashMap<String, String> confirmIdPwdAdm(String id) {
		AndDAO dao = sqlSession.getMapper(AndDAO.class);
		return dao.confirmIdPwdAdm(id);
	}

	@Override
	public StudentVO getStudentInfo(String id) {
		AndDAO dao = sqlSession.getMapper(AndDAO.class);
		StudentVO s = dao.getStudentInfo(id);
		
		return s;
	}

	@Override
	public Manager getAdminInfo(String id) {
		AndDAO dao = sqlSession.getMapper(AndDAO.class);
		Manager m = dao.getAdminInfo(id);
		return m;
	}
	
	@Override
	public int whatNfc(Map<String, String> map) {
		AndDAO dao = sqlSession.getMapper(AndDAO.class);
		return dao.whatNfc(map);
	}

	@Override
	public int hiNfc(String pnum) {
		AndDAO dao = sqlSession.getMapper(AndDAO.class);
		return dao.hiNfc(pnum);
	}

	@Override
	public int byeNfc(Map<String, String> map) {
		AndDAO dao = sqlSession.getMapper(AndDAO.class);
		return dao.byeNfc(map);
	}


}
