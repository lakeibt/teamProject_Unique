package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class AdminVO {

	private int num;			//시퀀스
	private String id;			//사원번호
	private Timestamp inDay;	//출근일
	private Timestamp inTime;	//출근시간
	private Timestamp outTime;	//퇴근시간
	private int inState;		//출근 or 지각
	private int outState;		//퇴근
	
	private Timestamp salary_InDay;	//지급일
	private int sal_Num;			//급여코드
	private String name;			//이름
	private String depart_name;			//부서
	private int sal_total;			//총급여
	private int sal;				//월급
	private int over;				//야근수당
	private int meals;				//식대
	private int car;				//차량유지비
	
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
	public int getInState() {
		return inState;
	}
	public void setInState(int inState) {
		this.inState = inState;
	}
	public int getOutState() {
		return outState;
	}
	public void setOutState(int outState) {
		this.outState = outState;
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
	public String getDepart_name() {
		return depart_name;
	}
	public void setDepart_name(String depart_name) {
		this.depart_name = depart_name;
	}
	public int getSal_total() {
		return sal_total;
	}
	public void setSal_total(int sal_total) {
		this.sal_total = sal_total;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public int getOver() {
		return over;
	}
	public void setOver(int over) {
		this.over = over;
	}
	public int getMeals() {
		return meals;
	}
	public void setMeals(int meals) {
		this.meals = meals;
	}
	public int getCar() {
		return car;
	}
	public void setCar(int car) {
		this.car = car;
	}
	

}
