package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class SalaryVO {

	private String name;		//이름
	private String rank;		//직급
	private String depart;		//부서
	private String depart_name;		//부서이름
	
	private int rate;   //상여 퍼센트
	private int salary_input_num;   //번호 - 시퀀스 1 증가
	private int payments_division;  // 지급 구분 - 정규/ 비정규/ 교수
	private int salary_division;   //급여 구분 - 급여 / 상여
	private String salary_name; 	//급여대장 명칭
	
	private int salary;    // 기본급
	private Timestamp salary_inday;  //급여지급일
	private int car;   // 차량 소유 0 //
	private int cost; // 식대 코드
	
	private int num;
	private String id;			//사원번호
	private int meal;  // 식대
	private int overtime;  //
	private int contract_vehicle;  //차량유지비 
	private int pay;  //급여
	private int paytotal;  //급여+식대+차량유지비
	private Timestamp salary_month;  //급여지급일
	
	private int bonustotal;  //보너스토탈
	private Timestamp bonus_month;  //보너스 지급일
	
	private int salary_all_total;  // 전체 사원 급여 합계

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getDepart_name() {
		return depart_name;
	}

	public void setDepart_name(String depart_name) {
		this.depart_name = depart_name;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public int getSalary_input_num() {
		return salary_input_num;
	}

	public void setSalary_input_num(int salary_input_num) {
		this.salary_input_num = salary_input_num;
	}

	public int getPayments_division() {
		return payments_division;
	}

	public void setPayments_division(int payments_division) {
		this.payments_division = payments_division;
	}

	public int getSalary_division() {
		return salary_division;
	}

	public void setSalary_division(int salary_division) {
		this.salary_division = salary_division;
	}

	public String getSalary_name() {
		return salary_name;
	}

	public void setSalary_name(String salary_name) {
		this.salary_name = salary_name;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public Timestamp getSalary_inday() {
		return salary_inday;
	}

	public void setSalary_inday(Timestamp salary_inday) {
		this.salary_inday = salary_inday;
	}

	public int getCar() {
		return car;
	}

	public void setCar(int car) {
		this.car = car;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

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

	public int getMeal() {
		return meal;
	}

	public void setMeal(int meal) {
		this.meal = meal;
	}

	public int getOvertime() {
		return overtime;
	}

	public void setOvertime(int overtime) {
		this.overtime = overtime;
	}

	public int getContract_vehicle() {
		return contract_vehicle;
	}

	public void setContract_vehicle(int contract_vehicle) {
		this.contract_vehicle = contract_vehicle;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public int getPaytotal() {
		return paytotal;
	}

	public void setPaytotal(int paytotal) {
		this.paytotal = paytotal;
	}

	public Timestamp getSalary_month() {
		return salary_month;
	}

	public void setSalary_month(Timestamp salary_month) {
		this.salary_month = salary_month;
	}

	public int getBonustotal() {
		return bonustotal;
	}

	public void setBonustotal(int bonustotal) {
		this.bonustotal = bonustotal;
	}

	public Timestamp getBonus_month() {
		return bonus_month;
	}

	public void setBonus_month(Timestamp bonus_month) {
		this.bonus_month = bonus_month;
	}

	public int getSalary_all_total() {
		return salary_all_total;
	}

	public void setSalary_all_total(int salary_all_total) {
		this.salary_all_total = salary_all_total;
	}

}
