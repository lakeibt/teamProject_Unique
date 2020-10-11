package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class LectureVO {

	private int le_num;
	private String co_code;
	private String le_title;
	private String le_content;
	private String le_writer;
	private Timestamp le_date;
	private String le_file;
	private int le_week;
	private String le_file_img;
	
	public int getLe_num() {
		return le_num;
	}
	public void setLe_num(int le_num) {
		this.le_num = le_num;
	}
	public String getCo_code() {
		return co_code;
	}
	public void setCo_code(String co_code) {
		this.co_code = co_code;
	}
	public String getLe_title() {
		return le_title;
	}
	public void setLe_title(String le_title) {
		this.le_title = le_title;
	}
	public String getLe_content() {
		return le_content;
	}
	public void setLe_content(String le_content) {
		this.le_content = le_content;
	}
	public String getLe_writer() {
		return le_writer;
	}
	public void setLe_writer(String le_writer) {
		this.le_writer = le_writer;
	}
	public Timestamp getLe_date() {
		return le_date;
	}
	public void setLe_date(Timestamp le_date) {
		this.le_date = le_date;
	}
	public String getLe_file() {
		return le_file;
	}
	public void setLe_file(String le_file) {
		this.le_file = le_file;
	}
	public int getLe_week() {
		return le_week;
	}
	public void setLe_week(int le_week) {
		this.le_week = le_week;
	}
	public String getLe_file_img() {
		return le_file_img;
	}
	public void setLe_file_img(String le_file_img) {
		this.le_file_img = le_file_img;
	}
	
	
}
