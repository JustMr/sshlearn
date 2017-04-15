package com.adL.service.impl;

import java.util.List;

import com.adL.bean.SafeUser;
import com.adL.dao.UserDAO;
import com.adL.service.ActionManager;

public class ActionManagerImpl implements ActionManager {

	private UserDAO userDAO;
	

	@Override
	public List<SafeUser> findAll() {
		// TODO Auto-generated method stub
		List<SafeUser> listUsers = userDAO.findAll();
		return listUsers;
	}
	
	@Override
	public String validLogin(String username, String password) {
		// TODO Auto-generated method stub
		try {
			SafeUser user = userDAO.findUserByNameAndPass(username, password);
			if (user!=null) {
				return user.getSafeuserid();
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	@Override
	public SafeUser findAllSafeUserById(String safeId) {
		// TODO Auto-generated method stub
		
		try {
			SafeUser user = userDAO.finUserById(safeId);
			if (user!=null) {
				return user;
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	@Override
	public UserDAO getUserDAO() {
		// TODO Auto-generated method stub
		return this.userDAO;
	}

	@Override
	public void setUserDAO(UserDAO userDao) {
		// TODO Auto-generated method stub
		this.userDAO = userDao;
	}

	@Override
	public void deleteSafeUser(String safeId) {
		// TODO Auto-generated method stub
		this.userDAO.delete(safeId);
	}

	@Override
	public void addSafeUser(SafeUser user) {
		// TODO Auto-generated method stub
		this.userDAO.save(user);
	}

	@Override
	public void saveOrUpdateSafeUser(SafeUser user) {
		// TODO Auto-generated method stub
		this.userDAO.update(user);
	}

	@Override
	public SafeUser findSafeUserByName(String safeusername) {
		// TODO Auto-generated method stub
		List<SafeUser> list = this.userDAO.findUserByName(safeusername);
		if (list!=null&&list.size()>0) {
			return list.get(0);
		}
		return null;
	}

}
