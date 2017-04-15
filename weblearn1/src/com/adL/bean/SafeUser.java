package com.adL.bean;

import java.sql.Timestamp;
import java.util.Date;

/**
 * SafeUser entity. @author MyEclipse Persistence Tools
 */

public class SafeUser implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String safeusername;
	private String safepassword;
	private String safeuserid;
	private String saferole;
	private String safemial;
	private String safesex;
	private Date safebirthday;
	private Timestamp safebuilddate;
	private String safeintrodu;

	// Constructors

	/** default constructor */
	public SafeUser() {
	}

	/** minimal constructor */
	public SafeUser(String safeusername, String safepassword) {
		this.safeusername = safeusername;
		this.safepassword = safepassword;
	}

	/** full constructor */
	public SafeUser(String safeusername, String safepassword,
			String safeuserid, String saferole, String safemial,
			String safesex, Date safebirthday, Timestamp safebuilddate,
			String safeintrodu) {
		this.safeusername = safeusername;
		this.safepassword = safepassword;
		this.safeuserid = safeuserid;
		this.saferole = saferole;
		this.safemial = safemial;
		this.safesex = safesex;
		this.safebirthday = safebirthday;
		this.safebuilddate = safebuilddate;
		this.safeintrodu = safeintrodu;
	}

	// Property accessors

	public String getSafeusername() {
		return this.safeusername;
	}

	public void setSafeusername(String safeusername) {
		this.safeusername = safeusername;
	}

	public String getSafepassword() {
		return this.safepassword;
	}

	public void setSafepassword(String safepassword) {
		this.safepassword = safepassword;
	}

	public String getSafeuserid() {
		return this.safeuserid;
	}

	public void setSafeuserid(String safeuserid) {
		this.safeuserid = safeuserid;
	}

	public String getSaferole() {
		return this.saferole;
	}

	public void setSaferole(String saferole) {
		this.saferole = saferole;
	}

	public String getSafemial() {
		return this.safemial;
	}

	public void setSafemial(String safemial) {
		this.safemial = safemial;
	}

	public String getSafesex() {
		return this.safesex;
	}

	public void setSafesex(String safesex) {
		this.safesex = safesex;
	}

	public Date getSafebirthday() {
		return this.safebirthday;
	}

	public void setSafebirthday(Date safebirthday) {
		this.safebirthday = safebirthday;
	}

	public Timestamp getSafebuilddate() {
		return this.safebuilddate;
	}

	public void setSafebuilddate(Timestamp safebuilddate) {
		this.safebuilddate = safebuilddate;
	}

	public String getSafeintrodu() {
		return this.safeintrodu;
	}

	public void setSafeintrodu(String safeintrodu) {
		this.safeintrodu = safeintrodu;
	}

}