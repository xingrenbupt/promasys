package com.promasys.email;

public class ToMail {
	private String[] toAddress;//�ռ��˵�ַ
	public ToMail(){
		super();
	}
	public ToMail(String[] toAddress){
		this.toAddress = toAddress;
	}
	public String[] getToAddress() {
		return toAddress;
	}
	public void setToAddress(String[] toAddress) {
		this.toAddress = toAddress;
	}

}
