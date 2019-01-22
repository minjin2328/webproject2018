package com.domain;

import java.sql.Date;

//관리자(Admin) 정보 클래스
public class Admin {

	// 관리자아이디, 관리자패스워드
	private String admin_id, admint_name, admint_pw, admint_phone;
	private Date admin_regDate;
	private int admin_grade, admin_blind;
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmint_name() {
		return admint_name;
	}
	public void setAdmint_name(String admint_name) {
		this.admint_name = admint_name;
	}
	public String getAdmint_pw() {
		return admint_pw;
	}
	public void setAdmint_pw(String admint_pw) {
		this.admint_pw = admint_pw;
	}
	public String getAdmint_phone() {
		return admint_phone;
	}
	public void setAdmint_phone(String admint_phone) {
		this.admint_phone = admint_phone;
	}
	public Date getAdmin_regDate() {
		return admin_regDate;
	}
	public void setAdmin_regDate(Date admin_regDate) {
		this.admin_regDate = admin_regDate;
	}
	public int getAdmin_grade() {
		return admin_grade;
	}
	public void setAdmin_grade(int admin_grade) {
		this.admin_grade = admin_grade;
	}
	public int getAdmin_blind() {
		return admin_blind;
	}
	public void setAdmin_blind(int admin_blind) {
		this.admin_blind = admin_blind;
	}
	
}
	

