package com.promasys.email;

public class ContentMail {
	private String title = "";//titleΪ�ʼ�����
	private String content = "";//���͵�����
	
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
