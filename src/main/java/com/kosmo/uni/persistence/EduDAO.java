package com.kosmo.uni.persistence;

import java.util.Map;

public interface EduDAO {

	public int insertUser(Map<String, String> map);

	public Map<String, Object> selectSUser(String id);
	
	public Map<String, Object> selectPUser(String id);
	
	public Map<String, Object> selectAUser(String id);
}
