package com.kosmo.uni.persistence;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.kosmo.uni.vo.CourseVO;
import com.kosmo.uni.vo.StudentStudyListVO;
import com.kosmo.uni.vo.StudentVO;

public interface EduDAO {

	public int insertUser(Map<String, String> map);

	public Map<String, Object> selectSUser(String id);
	
	public Map<String, Object> selectPUser(String id);
	
	public Map<String, Object> selectAUser(String id);
}
