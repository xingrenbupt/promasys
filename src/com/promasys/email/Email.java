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
	 * �����ʼ���ʵ��
	 * @param from �����˵���Ϣ
	 * @param to �ռ��˵ĵ�ַ
	 * @param content ���͵����ݺͱ���
	 */
	public void sendMail(FromMail from, ToMail to, ContentMail content){
		try{
//			System.out.println(from.getFromAddress());
//			System.out.println(to.getToAddress());
//			System.out.println(content.getTitle());
			
			Properties props = new Properties();
			props.put(from.getHost(), from.getCom());//�洢�����ʼ�����������Ϣ
			props.put(from.getAuth(), "true");//ͬʱͨ����֤
			
			Session session = Session.getInstance(props);//�ʼ��Ự����
			session.setDebug(true);//��ӡ������Ϣ
			MimeMessage message = new MimeMessage(session);//����MIME�ʼ�����
			//����Ϣ�������÷�����/�ռ���/����/����ʱ��
			InternetAddress fromAddress = new InternetAddress(from.getFromAddress()); 
			message.setFrom(fromAddress);//���÷�����
			
			//�ռ��˵�ַ
			InternetAddress[] toAddress = new InternetAddress[to.getToAddress().length];
			for(int i=0;i<to.getToAddress().length;i++){
				toAddress[i] = new InternetAddress(to.getToAddress()[i]);
			}
			message.setRecipients(Message.RecipientType.TO, toAddress);//�����ռ��ˣ����������������ΪTO
			message.setSubject(content.getTitle());//��������
			message.setSentDate(new Date());//���÷���ʱ��
			
			BodyPart bPart = new MimeBodyPart();//�½�һ������ż����ݵ�BodyPart����
			bPart.setContent(content.getContent(),"text/html;charset=utf-8");
			Multipart mPart = new MimeMultipart();//�½�һ��MimeMultipart���������BodyPart����
			mPart.addBodyPart(bPart);//��BodyPart���뵽MimeMultipart������
			
			message.setContent(mPart);//��mPart��Ϊ��Ϣ���������
			message.saveChanges();//�洢�ʼ���Ϣ
			
			Transport transport = session.getTransport("smtp");//
//			transport.connect(from.getCom(), from.getUserName(), from.getPassword());//��smtp��ʽ��¼����
			// qq����POP3���������˿�995�� SMTP���������˿�465��587��
			transport.connect(from.getCom(), from.getUserName(), from.getPassword());//�������� ����ͨ��
//			transport.connect(from.getCom(), 587, from.getUserName(), from.getPassword());//QQ���� ����ͨ��
//			transport.connect(from.getCom(), 25, from.getUserName(), from.getPassword());//163���� ����ûͨ��
			transport.sendMessage(message, message.getAllRecipients());//�����ʼ������еڶ�����������������õ��ռ��˵�ַ
			transport.close();

			System.out.println(fromAddress);
			System.out.println(toAddress);
			System.out.println(content.getTitle());
		}catch(Exception e){
			log.error(e.getMessage());
		}
	}
}
