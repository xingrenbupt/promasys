package com.promasys.domain;

import java.util.Date;

/**
 * Posts entity. @author MyEclipse Persistence Tools
 */

public class Posts implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private String name;
	private Integer boardId;
	private String content;
	private Date postTime;
	private Integer replyNum;

	// Constructors

	/** default constructor */
	public Posts() {
	}

	/** minimal constructor */
	public Posts(Users users, String name) {
		this.users = users;
		this.name = name;
	}

	/** full constructor */
	public Posts(Users users, String name, Integer boardId, String content,
			Date postTime, Integer replyNum) {
		this.users = users;
		this.name = name;
		this.boardId = boardId;
		this.content = content;
		this.postTime = postTime;
		this.replyNum = replyNum;
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

	public Integer getBoardId() {
		return this.boardId;
	}

	public void setBoardId(Integer boardId) {
		this.boardId = boardId;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPostTime() {
		return this.postTime;
	}

	public void setPostTime(Date postTime) {
		this.postTime = postTime;
	}

	public Integer getReplyNum() {
		return this.replyNum;
	}

	public void setReplyNum(Integer replyNum) {
		this.replyNum = replyNum;
	}

}