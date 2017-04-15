package com.adL.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.adL.bean.SafeUser;
import com.adL.service.ActionManager;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected ActionManager mgr;
	private String username;
	private String pwd;
	private List<SafeUser> listUsers = new ArrayList<SafeUser>();
	private SafeUser user;
	private String safeuserid;
	private String[] safeuserids;
	
	public String[] getSafeuserids() {
		return safeuserids;
	}

	public void setSafeuserids(String[] safeuserids) {
		this.safeuserids = safeuserids;
	}

	public List<SafeUser> getListUsers() {
		return listUsers;
	}

	public void setListUsers(List<SafeUser> listUsers) {
		this.listUsers = listUsers;
	}

	public String getSafeuserid() {
		return safeuserid;
	}

	public void setSafeuserid(String safeuserid) {
		this.safeuserid = safeuserid;
	}

	public ActionManager getMgr() {
		return mgr;
	}

	public void setMgr(ActionManager mgr) {
		this.mgr = mgr;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public SafeUser getUser() {
		return user;
	}

	public void setUser(SafeUser user) {
		this.user = user;
	}

	public List<SafeUser> getList() {
		return listUsers;
	}

	public void setList(List<SafeUser> list) {
		this.listUsers = list;
	}
	
	//登录验证
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession(true);
		System.out.println("LoginAction.execute");
		
		if (username==""||username==null) {
			return "FAILURE";
		}
		
		String userId = mgr.validLogin(username, pwd);
		session.setAttribute("userId", userId);
		if (userId==null) {
//			addActionError("用户名/密码不匹配");
			System.out.println("非法用户");
			return "FAILURE";
		}else {
			System.out.println("合法用户");
			return "SUCCESS";
		}
	}

	public String findAll() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession(true);
		String userId = (String)session.getAttribute("userId");
		System.out.println("session："+userId);
		user = mgr.findAllSafeUserById(userId);
		return null;
	}
	
	//查找所有
	public String list() throws Exception {
		this.listUsers = this.mgr.findAll();
		return "SUCCESS";
	}
	
	//增SafeUser
	public String addSafeUser() {
		if (this.mgr.findSafeUserByName(username)!=null) {
			return "INPUT";
		} else {
			this.mgr.addSafeUser(user);
			return "SUCCESS";
		}
	}
	
	public String deleteSafeUser() {
		if (null!=this.safeuserid) {
			this.mgr.deleteSafeUser(this.safeuserid);
			return "SUCCESS";
		} else{
			if (safeuserids.length > 0) {
				for (String idString : safeuserids) {
					this.mgr.deleteSafeUser(idString);
				}
				return "SUCCESS";
			}
		}
		return INPUT;
	}
	
	public String saveOrUpdate() {
		this.mgr.saveOrUpdateSafeUser(user);
		return "SUCCESS";
	}
	
	public String editSafeUser() {
		this.user = this.mgr.findAllSafeUserById(safeuserid);
		return "SUCCESS";
	}
	
	public String saveSafeUser() {
		String safeuserid = this.user.getSafeuserid();
		user = this.mgr.findAllSafeUserById(safeuserid);
		return "SUCCESS";
	}
	
	public String UpdateSafeUser() {
		this.mgr.saveOrUpdateSafeUser(user);
		return "SUCCESS";
	}
	
} 
