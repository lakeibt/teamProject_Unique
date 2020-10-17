package com.kosmo.uni.persistence;

import java.util.Map;

public interface EduDAO {

	public Map<String, Object> selectSUser(String id);
	
	public Map<String, Object> selectPUser(String id);
	
	public Map<String, Object> selectAUser(String id);

	public int findId(String position, String id);

	public int confirmId(String position, Map<String, String> map);

	public int setPwd(Map<String, String> map);
}
