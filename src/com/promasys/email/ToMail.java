package com.promasys.email;

public class ToMail {
	private String[] toAddress;//收件人地址
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
