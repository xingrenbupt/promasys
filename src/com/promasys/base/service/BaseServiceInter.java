package com.promasys.base.service;

import java.io.Serializable;
import java.util.List;

public interface BaseServiceInter {

	//ͨ��һ��hql�ʹ���Ĳ��������Ӧ�Ĳ�ѯ����
	public List getResult(String hql, Object[] parameters);
	//�������
	public void save(Object obj);
	//ɾ��һ������
	public void delete(Object obj);
	//����һ������
	public void update(Object obj);
	
	public Object findById(Class clazz, Serializable id);
}
