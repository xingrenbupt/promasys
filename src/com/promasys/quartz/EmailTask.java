package com.promasys.quartz;

import java.util.List;

import com.promasys.domain.Users;
import com.promasys.email.ContentMail;
import com.promasys.email.Email;
import com.promasys.email.FromMail;
import com.promasys.email.ToMail;
import com.promasys.service.inter.UserServiceInter;

public class EmailTask {
	
	private Email email;
	private FromMail fromMail;
	private ToMail toMail;
	private ContentMail contentMail;
	private UserServiceInter userService;
	
	public UserServiceInter getUserService() {
		return userService;
	}

	public void setUserService(UserServiceInter userService) {
		this.userService = userService;
	}

	public Email getEmail() {
		return email;
	}

	public void setEmail(Email email) {
		this.email = email;
	}

	public FromMail getFromMail() {
		return fromMail;
	}

	public void setFromMail(FromMail fromMail) {
		this.fromMail = fromMail;
	}

	public ToMail getToMail() {
		return toMail;
	}

	public void setToMail(ToMail toMail) {
		this.toMail = toMail;
	}

	public ContentMail getContentMail() {
		return contentMail;
	}

	public void setContentMail(ContentMail contentMail) {
		this.contentMail = contentMail;
	}

	public void sendEmail(){
		String fromAddress = "xingrenbupt@sina.com";
		String userName = "xingrenbupt@sina.com";
		String password = "123456ns";//设置邮箱密码
//		String toAddress[] = {"niesong@bupt.edu.cn"};
		@SuppressWarnings("unchecked")
		List<Users> userList = userService.getResult("from Users", null);
		System.out.println(userList);
		String[] toAddress=new String[2];//userList.size() 前两个邮箱有效
		for(int i=0;i<2;i++){
			toAddress[i] = userList.get(i).getEmail();
			System.out.println(toAddress[i]);
		}
//		String toAddress[] = {"niesong@bupt.edu.cn","747909962@qq.com"};
		String title = "Test";
		String content = "I love you !!!";
		
		fromMail.setFromAddress(fromAddress);
		fromMail.setUserName(userName);
		fromMail.setPassword(password);
		toMail.setToAddress(toAddress);
		contentMail.setContent(content);
		contentMail.setTitle(title);
		email.sendMail(fromMail, toMail, contentMail);
//		System.out.println(fromMail.getFromAddress()+" " + toMail.getToAddress());
	}
}
