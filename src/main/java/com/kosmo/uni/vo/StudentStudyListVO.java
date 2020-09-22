package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class StudentStudyListVO {
	private String id;
	private String st_name;
	private String st_day;
	private int st_code;
	private String pr_name;
	private Timestamp le_time;
	private String day;
	private int num;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSt_name() {
		return st_name;
	}
	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}
	public String getSt_day() {
		return st_day;
	}
	public void setSt_day(String st_day) {
		this.st_day = st_day;
	}
	public int getSt_code() {
		return st_code;
	}
	public void setSt_code(int st_code) {
		this.st_code = st_code;
	}
	public String getPr_name() {
		return pr_name;
	}
	public void setPr_name(String pr_name) {
		this.pr_name = pr_name;
	}
	public Timestamp getLe_time() {
		return le_time;
	}
	public void setLe_time(Timestamp le_time) {
		this.le_time = le_time;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
}
