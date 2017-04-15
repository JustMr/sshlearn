package com.adL.service;

import java.util.List;

import com.adL.bean.SafeUser;
import com.adL.dao.UserDAO;

public interface ActionManager {

	//SafeUser操作
	public String validLogin(String username,String password);
	public SafeUser findAllSafeUserById(String safeId);
	public SafeUser findSafeUserByName(String safeusername);
	public List<SafeUser> findAll();
	public UserDAO getUserDAO();
	public void setUserDAO(UserDAO userDao);
	public void deleteSafeUser(String safeId);
	public void addSafeUser(SafeUser user);
	public void saveOrUpdateSafeUser(SafeUser user);
}
