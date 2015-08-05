package com.promasys.domain;

import java.util.Date;

/**
 * Meeting entity. @author MyEclipse Persistence Tools
 */

public class Meeting implements java.io.Serializable {

	// Fields

	private Integer id;
	private String topic;
	private String time;
	private String site;
	private String staffs;
	private String remarks;
	private Date setTime;
	// Constructors

	/** default constructor */
	public Meeting() {
	}

	/** minimal constructor */
	public Meeting(String topic, String time, String site) {
		this.topic = topic;
		this.time = time;
		this.site = site;
	}

	/** full constructor */
	public Meeting(String topic, String time, String site, String staffs,
			String remarks, Date setTime) {
		this.topic = topic;
		this.time = time;
		this.site = site;
		this.staffs = staffs;
		this.remarks = remarks;
		this.setTime = setTime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTopic() {
		return this.topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getSite() {
		return this.site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getStaffs() {
		return this.staffs;
	}

	public void setStaffs(String staffs) {
		this.staffs = staffs;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Date getSetTime() {
		return setTime;
	}

	public void setSetTime(Date setTime) {
		this.setTime = setTime;
	}

}