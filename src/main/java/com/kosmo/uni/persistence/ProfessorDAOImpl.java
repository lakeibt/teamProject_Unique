package com.kosmo.uni.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProfessorDAOImpl implements ProfessorDAO {

	@Autowired
	SqlSession sqlSession;
}
