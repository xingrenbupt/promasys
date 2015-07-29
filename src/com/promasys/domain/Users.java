package com.promasys.domain;

import java.util.Date;


/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer id;
	private University university;
	private String email;
	private String name;
	private String pwd;
	private String sex;
	private String photo;
	private String tel;
	private String mobile;
	private String qq;
	private String website;
	private Short online;
	private Date indate;
	private Date loginDate;
	private Short level;

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(University university, String email, String name, String pwd) {
		this.university = university;
		this.email = email;
		this.name = name;
		this.pwd = pwd;
	}

	/** full constructor */
	public Users(University university, String email, String name, String pwd,
			String sex, String photo, String tel, String mobile, String qq,
			String website, Short online, Date indate,
			Date loginDate, Short level) {
		this.university = university;
		this.email = email;
		this.name = name;
		this.pwd = pwd;
		this.sex = sex;
		this.photo = photo;
		this.tel = tel;
		this.mobile = mobile;
		this.qq = qq;
		this.website = website;
		this.online = online;
		this.indate = indate;
		this.loginDate = loginDate;
		this.level = level;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public University getUniversity() {
		return university;
	}

	public void setUniversity(University university) {
		this.university = university;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getQq() {
		return this.qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getWebsite() {
		return this.website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public Short getOnline() {
		return this.online;
	}

	public void setOnline(Short online) {
		this.online = online;
	}

	public Date getIndate() {
		return this.indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

	public Date getLoginDate() {
		return this.loginDate;
	}

	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}

	public Short getLevel() {
		return this.level;
	}

	public void setLevel(Short level) {
		this.level = level;
	}

}