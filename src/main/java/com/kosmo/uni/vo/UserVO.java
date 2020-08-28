package com.kosmo.uni.vo;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserVO extends User{
	private String userId;
	private String userName;
	
	// 두 생성자 중 첫번째 선택, 마지막 매개변수에 String userid 추가
	// super는 부모 User 클래스
	public UserVO(String id, String password, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities, String userid) {
		super(id, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		
		this.userId = id;
		this.userName = userid;
	}

	// getter, setter, toString 추가
	public String getUserId() {
		return userId;
	}

	public void setUserid(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "UserVO [userId=" + userId + "]";
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}