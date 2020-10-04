package com.kosmo.uni.persistence;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.Manager;
import com.kosmo.uni.vo.StudentVO;

@Repository
public class AndroidDAOImpl implements AndroidDAO{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public HashMap<String, String> confirmIdPwdStu(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.confirmIdPwdStu(id);
	}
	
	@Override
	public HashMap<String, String> confirmIdPwdAdm(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.confirmIdPwdAdm(id);
	}

	@Override
	public StudentVO getStudentInfo(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getStudentInfo(id);
	}

	@Override
	public Manager getAdminInfo(String id) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.getAdminInfo(id);
	}
	
	@Override
	public int whatNfc(Map<String, String> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.whatNfc(map);
	}

	@Override
	public int hiNfc(String pnum) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.hiNfc(pnum);
	}

	@Override
	public int byeNfc(Map<String, String> map) {
		AndroidDAO dao = sqlSession.getMapper(AndroidDAO.class);
		return dao.byeNfc(map);
	}


}
