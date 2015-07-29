package com.promasys.domain;

import java.util.Date;

/**
 * Prodoclist entity. @author MyEclipse Persistence Tools
 */

public class Prodoclist implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private String name;
	private String type;
	private Integer size;
	private Date uploadDate;
	private Integer downloadTimes;
	private Short level;

	// Constructors

	/** default constructor */
	public Prodoclist() {
	}

	/** minimal constructor */
	public Prodoclist(Users users, String name) {
		this.users = users;
		this.name = name;
	}

	/** full constructor */
	public Prodoclist(Users users, String name, String type, Integer size,
			Date uploadDate, Integer downloadTimes, Short level) {
		this.users = users;
		this.name = name;
		this.type = type;
		this.size = size;
		this.uploadDate = uploadDate;
		this.downloadTimes = downloadTimes;
		this.level = level;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getSize() {
		return this.size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public Date getUploadDate() {
		return this.uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public Integer getDownloadTimes() {
		return this.downloadTimes;
	}

	public void setDownloadTimes(Integer downloadTimes) {
		this.downloadTimes = downloadTimes;
	}

	public Short getLevel() {
		return this.level;
	}

	public void setLevel(Short level) {
		this.level = level;
	}

}