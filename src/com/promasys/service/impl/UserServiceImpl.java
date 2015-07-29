package com.promasys.service.impl;

import java.util.List;

import com.promasys.base.service.BaseServiceImpl;
import com.promasys.domain.Users;
import com.promasys.service.inter.UserServiceInter;

public class UserServiceImpl extends BaseServiceImpl implements
		UserServiceInter {
	@SuppressWarnings("unchecked")
	public Users check(Users user) {
		List<Users> list = getResult("from Users where name=? and pwd=?", new Object[]{user.getName(), user.getPwd()});
		if(list.size()==1){
			return list.get(0);
		}else{
			return null;
		}
	}
}
