package com.promasys.service.inter;

import com.promasys.base.service.BaseServiceInter;
import com.promasys.domain.Users;

public interface UserServiceInter extends BaseServiceInter {
	//��֤�û��Ƿ���ڣ�����users�����������null����ʾ���û�������
	public Users check(Users user);
}
