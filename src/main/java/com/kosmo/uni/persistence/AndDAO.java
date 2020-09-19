package com.kosmo.uni.persistence;

import java.util.HashMap;
import java.util.Map;

import com.kosmo.uni.vo.Member;

public interface AndDAO {
	
	public HashMap<String, String> confirmIdPwd(String id);
	
	public Member getMemberInfo(String id);

}
