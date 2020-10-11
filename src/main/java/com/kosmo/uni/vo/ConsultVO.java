package com.kosmo.uni.vo;

public class ConsultVO {
	private String stuName;
	private String stuNumber;
	private String proName;
	private String consultExp;
	private int consultType;
	private String content;
	private String status;
	
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public String getStuNumber() {
		return stuNumber;
	}
	public void setStuNumber(String stuNumber) {
		this.stuNumber = stuNumber;
	}
	public String getConsultExp() {
		return consultExp;
	}
	public void setConsultExp(String consultExp) {
		this.consultExp = consultExp;
	}
	public int getConsultType() {
		return consultType;
	}
	public void setConsultType(int consultType) {
		this.consultType = consultType;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
