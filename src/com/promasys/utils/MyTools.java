package com.promasys.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.upload.FormFile;

public class MyTools {
	//上传文件的方法
	public static String uploadDoc(HttpServletRequest request, FormFile ff, String id){
		String fileName="";
		try {
			//考虑给每个用户创建自己的文件夹
			String filePath = request.getSession().getServletContext().getRealPath("/");
			//filePath就是当前这个web应用是绝对路径 C:\Program Files\Java\apache-tomcat-6.0.44\webapps\promasys
//			System.out.println("filePath="+filePath);
			InputStream inputStream = ff.getInputStream();//把文件读入
			fileName = ff.getFileName();
			String fileType = fileName.substring(fileName.indexOf(".")+1);
			String newFilePath = filePath+"documents\\"+id+"\\"+fileType+"\\";
//			System.out.println("newFilePath="+newFilePath);
			//判断newFilePath是否存在
			File f = new File(newFilePath);
			if(!f.isDirectory()){
				//不是文件夹，创建即可
				f.mkdirs();
			}
			OutputStream bos = new FileOutputStream(newFilePath+fileName);
			int len = 0;
			byte[] buffer = new byte[8192];
			while ((len = inputStream.read(buffer, 0, 8192)) != -1) {
				bos.write(buffer, 0, len);// 将文件写入服务器
			}
			bos.close();
			inputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fileName;
	}
}
