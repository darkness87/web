package com.human.finalpjt.dto;

public class StudentDto {
	private String s_id;
	private String s_pwd;
	private String s_name;
	private String s_addr;
	private String s_email;
	private String s_phone;
	private int s_grade;
	private String s_college;
	private String s_major;
	
	public StudentDto() {}
	public StudentDto(String s_id, String s_pwd, String s_name, String s_addr, String s_email, String s_phone,
			int s_grade, String s_college, String s_major) {
		super();
		this.s_id = s_id;
		this.s_pwd = s_pwd;
		this.s_name = s_name;
		this.s_addr = s_addr;
		this.s_email = s_email;
		this.s_phone = s_phone;
		this.s_grade = s_grade;
		this.s_college = s_college;
		this.s_major = s_major;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getS_pwd() {
		return s_pwd;
	}
	public void setS_pwd(String s_pwd) {
		this.s_pwd = s_pwd;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_addr() {
		return s_addr;
	}
	public void setS_addr(String s_addr) {
		this.s_addr = s_addr;
	}
	public String getS_email() {
		return s_email;
	}
	public void setS_email(String s_email) {
		this.s_email = s_email;
	}
	public String getS_phone() {
		return s_phone;
	}
	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	public int getS_grade() {
		return s_grade;
	}
	public void setS_grade(int s_grade) {
		this.s_grade = s_grade;
	}
	public String getS_college() {
		return s_college;
	}
	public void setS_college(String s_college) {
		this.s_college = s_college;
	}
	public String getS_major() {
		return s_major;
	}
	public void setS_major(String s_major) {
		this.s_major = s_major;
	}
	
	
}
