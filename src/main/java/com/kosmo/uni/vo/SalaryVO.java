package com.kosmo.uni.vo;

import java.sql.Timestamp;

public class SalaryVO {
	
	private String id;			//사원번호
	private Timestamp inDay;	//출근일
	
	private Timestamp salary_InDay;	//지급일
	private int sal_Num;			//급여코드 - 정규 비정규 
	private String name;			//이름
	private String depart;			//부서
	private int sal_total;			//총급여
	private int Payments_division;  // 지급 구분
	
	

}
