package com.promasys.email;

import java.util.Date;
import java.util.Properties;
import org.apache.log4j.Logger;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class Email {
	private static String ClassName = Email.class.getName();
	private static Logger log = Logger.getLogger(ClassName);

	/**
	 * 发送邮件的实现
	 * @param from 发件人的信息
	 * @param to 收件人的地址
	 * @param content 发送的内容和标题
	 */
	public void sendMail(FromMail from, ToMail to, ContentMail content){
		try{
//			System.out.println(from.getFromAddress());
//			System.out.println(to.getToAddress());
//			System.out.println(content.getTitle());
			
			Properties props = new Properties();
			props.put(from.getHost(), from.getCom());//存储发送邮件服务器的信息
			props.put(from.getAuth(), "true");//同时通过验证
			
			Session session = Session.getInstance(props);//邮件会话对象
			session.setDebug(true);//打印调试信息
			MimeMessage message = new MimeMessage(session);//创建MIME邮件对象
			//给消息对象设置发件人/收件人/主题/发信时间
			InternetAddress fromAddress = new InternetAddress(from.getFromAddress()); 
			message.setFrom(fromAddress);//设置发件人
			
			//收件人地址
			InternetAddress[] toAddress = new InternetAddress[to.getToAddress().length];
			for(int i=0;i<to.getToAddress().length;i++){
				toAddress[i] = new InternetAddress(to.getToAddress()[i]);
			}
			message.setRecipients(Message.RecipientType.TO, toAddress);//设置收件人，并设置其接收类型为TO
			message.setSubject(content.getTitle());//设置主题
			message.setSentDate(new Date());//设置发信时间
			
			BodyPart bPart = new MimeBodyPart();//新建一个存放信件内容的BodyPart对象
			bPart.setContent(content.getContent(),"text/html;charset=utf-8");
			Multipart mPart = new MimeMultipart();//新建一个MimeMultipart对象来存放BodyPart对象
			mPart.addBodyPart(bPart);//将BodyPart加入到MimeMultipart对象中
			
			message.setContent(mPart);//把mPart作为消息对象的内容
			message.saveChanges();//存储邮件信息
			
			Transport transport = session.getTransport("smtp");//
//			transport.connect(from.getCom(), from.getUserName(), from.getPassword());//以smtp方式登录邮箱
			// qq邮箱POP3服务器（端口995） SMTP服务器（端口465或587）
			transport.connect(from.getCom(), from.getUserName(), from.getPassword());//新浪邮箱 测试通过
//			transport.connect(from.getCom(), 587, from.getUserName(), from.getPassword());//QQ邮箱 测试通过
//			transport.connect(from.getCom(), 25, from.getUserName(), from.getPassword());//163邮箱 测试没通过
			transport.sendMessage(message, message.getAllRecipients());//发送邮件，其中第二个参数是所有已设好的收件人地址
			transport.close();

			System.out.println(fromAddress);
			System.out.println(toAddress);
			System.out.println(content.getTitle());
		}catch(Exception e){
			log.error(e.getMessage());
		}
	}
}
