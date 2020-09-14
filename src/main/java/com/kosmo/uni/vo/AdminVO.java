package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class AdminVO {

	private int num;
	private String id;
	private Timestamp inDay;
	private Timestamp inTime;
	private Timestamp outTime;
	private String reason;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getInDay() {
		return inDay;
	}
	public void setInDay(Timestamp inDay) {
		this.inDay = inDay;
	}
	public Timestamp getInTime() {
		return inTime;
	}
	public void setInTime(Timestamp inTime) {
		this.inTime = inTime;
	}
	public Timestamp getOutTime() {
		return outTime;
	}
	public void setOutTime(Timestamp outTime) {
		this.outTime = outTime;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}

}
