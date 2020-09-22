package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class AdminVO {

	private int num;			//출근 상태 코드
	private String id;			//사원번호
	private Timestamp inDay;	//출근일
	private Timestamp inTime;	//출근시간
	private Timestamp outTime;	//퇴근시간
	private String reason;		//사유 (삭제 예정)
	
	private Timestamp salary_InDay;	//지급일
	private int sal_Num;			//급여코드 - 정규 비정규 
	private String name;			//이름
	private String depart;			//부서
	private int sal_total;			//총급여
	private int Payments_division;  // 지급 구분
	
	
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
	
	public Timestamp getSalary_InDay() {
		return salary_InDay;
	}
	public void setSalary_InDay(Timestamp salary_InDay) {
		this.salary_InDay = salary_InDay;
	}
	public int getSal_Num() {
		return sal_Num;
	}
	public void setSal_Num(int sal_Num) {
		this.sal_Num = sal_Num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public int getSal_total() {
		return sal_total;
	}
	public void setSal_total(int sal_total) {
		this.sal_total = sal_total;
	}
	public int getPayments_division() {
		return Payments_division;
	}
	public void setPayments_division(int payments_division) {
		Payments_division = payments_division;
	}
	

}
