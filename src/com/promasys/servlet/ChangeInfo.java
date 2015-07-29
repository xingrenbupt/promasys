package com.promasys.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.promasys.domain.University;
import com.promasys.service.inter.UniversityServiceInter;

public class ChangeInfo extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/xml;charset=utf-8");
		//ie禁用缓存
		response.setHeader("Cache-Controll", "no-cache");
		PrintWriter out = response.getWriter();
		//响应用户选择不同省/直辖市的大学信息请求
		String proid = request.getParameter("proid");
		String cid = request.getParameter("cid");
//		System.out.println("proid="+proid);
//		System.out.println("cid="+cid);
		
		//获取spring容器
		WebApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
		//从spring容器中，取出了 UniversityServiceInter 类型的bean
		UniversityServiceInter universityService=(UniversityServiceInter) ctx.getBean("universityServiceImpl");
		
		@SuppressWarnings("unchecked")
		List<University> uniList=universityService.getResult
		("from University where province.id=? and country.id=?", 
				new Object[]{Integer.valueOf(proid),Integer.valueOf("1")});
//		System.out.println(uniList.size());
		String res = "<allUniversities>";
		
		for (int i = 0; i < uniList.size(); i++) {
			University u = uniList.get(i);
			res += "<unis><id>" + u.getId() + "</id><name><![CDATA["
					+ u.getName() + "]]></name></unis>";
		}
		res += "</allUniversities>";
		out.write(res);
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);

	}

}
