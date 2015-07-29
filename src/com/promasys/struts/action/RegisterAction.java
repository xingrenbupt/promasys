
package com.promasys.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.promasys.domain.University;
import com.promasys.domain.Users;
import com.promasys.struts.form.UserForm;
import com.promasys.service.inter.CountryServiceInter;
import com.promasys.service.inter.ProvinceServiceInter;
import com.promasys.service.inter.UniversityServiceInter;
import com.promasys.service.inter.UserServiceInter;

public class RegisterAction extends DispatchAction {

	private CountryServiceInter countryService;
	private ProvinceServiceInter provinceService;
	private UniversityServiceInter universityService;
	private UserServiceInter userService;
	
	public UserServiceInter getUserService() {
		return userService;
	}

	public void setUserService(UserServiceInter userService) {
		this.userService = userService;
	}

	public UniversityServiceInter getUniversityService() {
		return universityService;
	}

	public void setUniversityService(UniversityServiceInter universityService) {
		this.universityService = universityService;
	}

	public ProvinceServiceInter getProvinceService() {
		return provinceService;
	}

	public void setProvinceService(ProvinceServiceInter provinceService) {
		this.provinceService = provinceService;
	}

	public void setCountryService(CountryServiceInter countryService) {
		this.countryService = countryService;
	}

	public CountryServiceInter getCountryService() {
		return countryService;
	}
	
	public ActionForward regUI(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		//准备数据供大学使用
		request.setAttribute("countrylist", countryService.getResult("from Country", null));
		//省和直辖市的信息
		request.setAttribute("provincelist", provinceService.getResult("from Province where country.id=?", new Object[]{new Integer(1)}));
		//大学的信息
		request.setAttribute("universitylist", universityService.getResult("from University where province.id=? and country.id=?", 
				new Object[]{new Integer(1), new Integer(1)}));
		//注册成功，则跳转到register.jsp
		return mapping.findForward("regUI");
	}
	
	//注册用户
	public ActionForward register(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		//从该action对应的表单中取出数据
		UserForm userForm = (UserForm)form;
		
		//取出信息，目的把用户保存
		Users user = new Users();
		user.setEmail(userForm.getEmail());
		user.setLoginDate(new java.util.Date());
		user.setName(userForm.getName());
		user.setPwd(userForm.getPwd());
		user.setIndate(new java.util.Date());
		user.setSex(userForm.getSex());
//		System.out.println(user.getEmail()+" "+user.getName()+" "+user.getPwd()+" "+user.getSex()+" "+user.getUniversity());
		//先得到该用户的大学对象
		University university = (University)universityService.findById(University.class, Integer.valueOf(userForm.getUniversityId()));
//		//创建该用户对应的用户大学记录
		user.setUniversity(university);
//		System.out.println(university.getCountry().getName());
		
		//保存用户
		userService.save(user);
		request.getSession().setAttribute("loginuser", user);
		return mapping.findForward("regOk");
	}
}