package com.kosmo.uni.vo;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserVO extends User{
	private String Id;
	private String Name;
	
	// 두 생성자 중 첫번째 선택, 마지막 매개변수에 String userid 추가
	// super는 부모 User 클래스
	public UserVO(String id, String password, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities, String userid) {
		super(id, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		
		this.Id = id;
		this.Name = userid;
	}

	// getter, setter, toString 추가
	public String getUserId() {
		return Id;
	}

	public void setUserid(String userId) {
		this.Id = userId;
	}

	@Override
	public String toString() {
		return "UserVO [userId=" + Id + "]";
	}

	public String getUserName() {
		return Name;
	}

	public void setUserName(String userName) {
		this.Name = userName;
	}

}