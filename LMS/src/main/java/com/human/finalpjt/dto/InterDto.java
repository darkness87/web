package com.human.finalpjt.dto;

public class InterDto {
	private String s_id;
	private String s_name;
	private String c_name;
	private String s_major;
	InterDto(){}

	public InterDto(String s_id, String s_name, String c_name, String s_major) {
		this.s_id = s_id;
		this.s_name = s_name;
		this.c_name = c_name;
		this.s_major = s_major;
	}

	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getS_major() {
		return s_major;
	}

	public void setS_major(String s_major) {
		this.s_major = s_major;
	}
	
	
	
}
