package com.promasys.struts.form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;


public class UserForm extends ActionForm{
	private String id;
	private String universityId;
	private String email;
	private String name;
	private String pwd;
	private String sex;
	private String photo;
	private String tel;
	private String mobile;
	private String qq;
	private String website;
	private String online;
	private String indate;
	private String loginDate;
	private String level;
	
	private FormFile docFile;
	private FormFile myPhoto;
	
	public FormFile getMyPhoto() {
		return myPhoto;
	}
	public void setMyPhoto(FormFile myPhoto) {
		this.myPhoto = myPhoto;
	}
	public FormFile getDocFile() {
		return docFile;
	}
	public void setDocFile(FormFile docFile) {
		this.docFile = docFile;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUniversityId() {
		return universityId;
	}
	public void setUniversityId(String universityId) {
		this.universityId = universityId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getOnline() {
		return online;
	}
	public void setOnline(String online) {
		this.online = online;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public String getLoginDate() {
		return loginDate;
	}
	public void setLoginDate(String loginDate) {
		this.loginDate = loginDate;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
	
}
