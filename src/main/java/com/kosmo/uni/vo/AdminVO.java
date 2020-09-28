package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class AdminVO {

	private int num;			//시퀀스
	private String id;			//사원번호
	private String pnum;			//휴대폰번호
	private String tagintime;	//출근시간
	private String tagouttime;	//퇴근시간
	
	private Timestamp salary_month;	//지급일
	private int sal_Num;			//급여코드 - 정규 비정규 
	private String name;			//이름
	private String depart_name;		//부서
	private int paytotal;			//총급여
	private int pay;				//월급
	private int overtime;			//야근수당
	private int meal;				//식대
	private int contract_vehicle;	//차량유지비
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
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	public String getTagintime() {
		return tagintime;
	}
	public void setTagintime(String tagintime) {
		this.tagintime = tagintime;
	}
	public String getTagouttime() {
		return tagouttime;
	}
	public void setTagouttime(String tagouttime) {
		this.tagouttime = tagouttime;
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
	public String getDepart_name() {
		return depart_name;
	}
	public void setDepart_name(String depart_name) {
		this.depart_name = depart_name;
	}
	public int getmeal() {
		return meal;
	}
	public void setmeal(int meal) {
		this.meal = meal;
	}
	public int getcontract_vehicle() {
		return contract_vehicle;
	}
	public void setcontract_vehicle(int contract_vehicle) {
		this.contract_vehicle = contract_vehicle;
	}
	public int getPayments_division() {
		return Payments_division;
	}
	public void setPayments_division(int payments_division) {
		Payments_division = payments_division;
	}
	public Timestamp getSalary_month() {
		return salary_month;
	}
	public void setSalary_month(Timestamp salary_month) {
		this.salary_month = salary_month;
	}
	public int getPaytotal() {
		return paytotal;
	}
	public void setPaytotal(int paytotal) {
		this.paytotal = paytotal;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getOvertime() {
		return overtime;
	}
	public void setOvertime(int overtime) {
		this.overtime = overtime;
	}
	

}
