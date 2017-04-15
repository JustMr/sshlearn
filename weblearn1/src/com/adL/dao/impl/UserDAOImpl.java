package com.adL.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.adL.bean.SafeUser;
import com.adL.dao.UserDAO;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	@Override
	public SafeUser get(String id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(SafeUser.class, id);
	}

	@Override
	public void save(SafeUser user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(user);
	}

	@Override
	public void update(SafeUser user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().saveOrUpdate(user);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(getHibernateTemplate().get(SafeUser.class,id));
	}

	@Override
	public void delete(SafeUser user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SafeUser> findAll() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from SafeUser");
	}

	@Override
	public SafeUser findUserByNameAndPass(String username, String password) {
		// TODO Auto-generated method stub
		System.out.println(username+"用户验证中...");
		@SuppressWarnings("rawtypes")
		List ul = getHibernateTemplate().find("from com.adL.bean.SafeUser au where au.safeusername = " +
				"'"+username+"' and au.safepassword = '"+password+"'");
		if(ul.size()==1){
			System.out.println("OK:"+username+","+password);
			return (SafeUser)ul.get(0);
		}
		
		return null;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public SafeUser finUserById(String safeId) {
		// TODO Auto-generated method stub
		
		List ul = getHibernateTemplate().find("from com.adL.bean.SafeUser au where au.safeuserid = " +
				"'"+safeId+"'");
		if(ul.size()==1){
			System.out.println("finUserById:"+safeId);
			return (SafeUser)ul.get(0);
		}
		
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SafeUser> findUserByName(String username) {
		// TODO Auto-generated method stub
		
		return this.getHibernateTemplate().find("from com.adL.bean.SafeUser au where au.safeusername = " +
				"'"+username+"'");
	}

	
}
