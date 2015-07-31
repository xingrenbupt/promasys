package com.promasys.email;

public class FromMail {
	private String host="mail.smtp.host";//发件人使用发邮件的电子信箱服务器使用的是QQ的服务器
	private String com = "smtp.sina.com";//新浪的服务器 
	private String auth = "mail.smtp.auth";//邮箱验证
	private String fromAddress;//发件人的邮箱
	private String userName;//发件人姓名（邮箱）
	private String password;//发件人密码
	
	public FromMail(){
		
	}
	
	public FromMail(String fromAddress, String password){
		super();
		this.fromAddress = fromAddress;
		this.userName = fromAddress;
		this.password = password;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getCom() {
		return com;
	}

	public void setCom(String com) {
		this.com = com;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public String getFromAddress() {
		return fromAddress;
	}

	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString(){
		return "FromMail [auth=" + auth +",com=" + com + ",fromAddess=" +
	fromAddress + ",host=" + host + ",password=" + password + ",userName="
	+ userName + "]";
	}
	
}
