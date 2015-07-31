package com.promasys.email;

public class FromMail {
	private String host="mail.smtp.host";//������ʹ�÷��ʼ��ĵ������������ʹ�õ���QQ�ķ�����
	private String com = "smtp.sina.com";//���˵ķ����� 
	private String auth = "mail.smtp.auth";//������֤
	private String fromAddress;//�����˵�����
	private String userName;//���������������䣩
	private String password;//����������
	
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
