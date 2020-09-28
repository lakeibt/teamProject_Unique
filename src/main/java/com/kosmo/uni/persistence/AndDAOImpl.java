package com.kosmo.uni.persistence;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosmo.uni.vo.Member;

@Repository
public class AndDAOImpl implements AndDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public HashMap<String, String> confirmIdPwd(String id) {
		AndDAO dao = sqlSession.getMapper(AndDAO.class);
		
		return dao.confirmIdPwd(id);
	}

	@Override
	public Member getMemberInfo(String id) {
		AndDAO dao = sqlSession.getMapper(AndDAO.class);
		Member m = dao.getMemberInfo(id);
		
		return m;
	}

}
