package com.adL.action;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1830428463812967271L;

	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String regist() throws Exception {
		System.out.println(name);
		
		return null;
	}
	public String regist1() throws Exception{
		System.out.println(name);
		
		return SUCCESS;
	}
}
