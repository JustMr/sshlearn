package com.aidaL.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.aidaL.bean.AdCustomer;
import com.aidaL.dao.AdUserDAO;

public class AdUserDAOImpl extends HibernateDaoSupport implements AdUserDAO {

	@Override
	public AdCustomer get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(AdCustomer.class, id);
	}

	@Override
	public void save(AdCustomer user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(user);
	}

	@Override
	public void update(AdCustomer user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(user);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(getHibernateTemplate().get(AdCustomer.class, id));
	}

	@Override
	public void delete(AdCustomer user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdCustomer> findAll() {
		// TODO Auto-generated method stub
		return getHibernateTemplate().find("from AdCustomer");
	}

	@Override
	public AdCustomer findUserByNameAndPass(String username, String password) {
		// TODO Auto-generated method stub
		System.out.println("AdUserDAOImpl...");
		@SuppressWarnings("unchecked")
		List<AdCustomer> list = getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UName = '"+username+"' and adcus.UPassword ='"+password+"'");
		
		if (list.size()==1) {
			return (AdCustomer)list.get(0);
		}
		
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public AdCustomer finCustById(Integer id) {
		// TODO Auto-generated method stub
		List<AdCustomer> list = getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UId = '"+id+"'");
		
		if (list.get(0)!=null) {
			return (AdCustomer)list.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdCustomer> finVIPCust() {
		// TODO Auto-generated method stub
		List<AdCustomer> list = null;
		list = getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UState > "+1);
		if (list!=null) {
			return list;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdCustomer> findStyleCust() {
		List<AdCustomer> list = null;
		list = this.getHibernateTemplate().find("from com.aidaL.bean.AdCustomer adcus where adcus.UStylingDesigner > "+0);
		if (list!=null) {
			return list;
		}
		return null;
	}

}
