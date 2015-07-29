package com.promasys.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.upload.FormFile;

public class MyTools {
	//�ϴ��ļ��ķ���
	public static String uploadDoc(HttpServletRequest request, FormFile ff, String id){
		String fileName="";
		try {
			//���Ǹ�ÿ���û������Լ����ļ���
			String filePath = request.getSession().getServletContext().getRealPath("/");
			//filePath���ǵ�ǰ���webӦ���Ǿ���·�� C:\Program Files\Java\apache-tomcat-6.0.44\webapps\promasys
//			System.out.println("filePath="+filePath);
			InputStream inputStream = ff.getInputStream();//���ļ�����
			fileName = ff.getFileName();
			String fileType = fileName.substring(fileName.indexOf(".")+1);
			String newFilePath = filePath+"documents\\"+id+"\\"+fileType+"\\";
//			System.out.println("newFilePath="+newFilePath);
			//�ж�newFilePath�Ƿ����
			File f = new File(newFilePath);
			if(!f.isDirectory()){
				//�����ļ��У���������
				f.mkdirs();
			}
			OutputStream bos = new FileOutputStream(newFilePath+fileName);
			int len = 0;
			byte[] buffer = new byte[8192];
			while ((len = inputStream.read(buffer, 0, 8192)) != -1) {
				bos.write(buffer, 0, len);// ���ļ�д�������
			}
			bos.close();
			inputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fileName;
	}
}
