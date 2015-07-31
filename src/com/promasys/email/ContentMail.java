package com.promasys.email;

public class ContentMail {
	private String title = "";//title为邮件标题
	private String content = "";//发送的内容
	
	public ContentMail(String title, String content){
		super();
		this.title = title;
		this.content = content;
	}
	
	public ContentMail(){
		super();
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}
