package com.aidaL.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.aidaL.bean.AdCustomer;
import com.aidaL.bean.AdLog;
import com.aidaL.bean.AdStore;
import com.aidaL.bean.BrandAD;
import com.aidaL.dao.AdBrandDAO;
import com.aidaL.dao.AdLogDAO;
import com.aidaL.dao.AdStoreDAO;
import com.aidaL.dao.AdUserDAO;
import com.aidaL.service.ActionManager;

public class ActionManagerImpl implements ActionManager {

	private AdUserDAO adUserDAO;
	private AdStoreDAO adStoreDAO;
	private AdBrandDAO adBrandDAO;
	private AdLogDAO adLogDAO;
	
	//用户管理,获取用户基本信息*********************************
	@Override
	public Map<String, Object> validLogin(String username, String password) {
		// TODO Auto-generated method stub
		
		try {
			AdCustomer adCustomer = adUserDAO.findUserByNameAndPass(username, password);
			if (adCustomer != null) {
				Map<String,Object> map = new HashMap<String, Object>();
				map.put("uId", adCustomer.getUId());
				map.put("uNickName", adCustomer.getUNickName());
				map.put("uAdmin", adCustomer.getUAdmin());
				map.put("uStore", adCustomer.getStId());
				return map;
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		
		return null;
	}
	
	@Override
	public void saveOrUpdateCust(AdCustomer adCustomer) {
		// TODO Auto-generated method stub
		this.adUserDAO.update(adCustomer);
	}
	
	@Override
	public AdUserDAO getAdUserDAO() {
		// TODO Auto-generated method stub
		return this.adUserDAO;
	}

	@Override
	public void setAdUserDAO(AdUserDAO adUserDAO) {
		// TODO Auto-generated method stub
		this.adUserDAO = adUserDAO;
	}

	@Override
	public List<AdCustomer> finAllCustomer() {
		// TODO Auto-generated method stub
		return this.adUserDAO.findAll();
	}
	
	@Override
	public AdCustomer findCustById(Integer id) {
		// TODO Auto-generated method stub
		try {
			AdCustomer adCustomer = this.adUserDAO.finCustById(id);
			if (adCustomer!=null) {
				return adCustomer;
			}
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		return null;
	}
	
	@Override
	public List<AdCustomer> findVIPCust() {
		// TODO Auto-generated method stub
		return this.adUserDAO.finVIPCust();
	}

	@Override
	public List<AdCustomer> findStyleCust() {
		// TODO Auto-generated method stub
		return this.adUserDAO.findStyleCust();
	}

	
	//店铺管理***********************************************
	@Override
	public void saveOrUpdateStore(AdStore store) {
		// TODO Auto-generated method stub
		this.adStoreDAO.update(store);
	}

	@Override
	public void deleteStore(Integer id) {
		// TODO Auto-generated method stub
		this.adStoreDAO.delete(id);
	}

	@Override
	public void addStore(AdStore store) {
		// TODO Auto-generated method stub
		this.adStoreDAO.save(store);
	}

	@Override
	public AdStore findStoreById(Integer id) {
		// TODO Auto-generated method stub
		return this.adStoreDAO.findStoreById(id);
	}

	@Override
	public List<AdStore> findAllStores() {
		// TODO Auto-generated method stub
		return this.adStoreDAO.findAll();
	}

	@Override
	public AdStoreDAO getAdStoreDAO() {
		// TODO Auto-generated method stub
		return this.adStoreDAO;
	}

	@Override
	public void setAdStoreDAO(AdStoreDAO adStoreDAO) {
		// TODO Auto-generated method stub
		this.adStoreDAO = adStoreDAO;
	}

	//品牌管理***************************************************
	@Override
	public void saveOrUpdateBrand(BrandAD brand) {
		// TODO Auto-generated method stub
		this.adBrandDAO.update(brand);
	}

	@Override
	public void deteleBrand(Integer id) {
		// TODO Auto-generated method stub
		this.adBrandDAO.delete(id);
	}

	@Override
	public void addBrand(BrandAD brand) {
		// TODO Auto-generated method stub
		this.adBrandDAO.save(brand);
	}

	@Override
	public BrandAD findBrandById(Integer id) {
		// TODO Auto-generated method stub
		try {
			BrandAD brandAD = adBrandDAO.findBrandById(id);
			if(brandAD!=null) {
				return brandAD;
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return null;
	}

	@Override
	public List<BrandAD> findAllBrand() {
		// TODO Auto-generated method stub
		return this.adBrandDAO.findAll();
	}

	@Override
	public AdBrandDAO getAdBrandDAO() {
		// TODO Auto-generated method stub
		return this.adBrandDAO;
	}

	@Override
	public void setAdBrandDAO(AdBrandDAO adBrandDAO) {
		// TODO Auto-generated method stub
		this.adBrandDAO = adBrandDAO;
	}

	@Override
	public BrandAD findBrandByName(String brName) {
		// TODO Auto-generated method stub
		try {
			BrandAD brandAD = adBrandDAO.findBrandByName(brName);
			if (brandAD!=null) {
				return brandAD;
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return null;
	}

	
	//日志管理***************************************
	@Override
	public void saveOrUpdateLog(AdLog adLog) {
		this.adLogDAO.update(adLog);
	}

	@Override
	public void deleteLog(Integer id) {
		this.adLogDAO.delete(id);
	}

	@Override
	public void addLog(AdLog adLog) {
		this.adLogDAO.save(adLog);
	}

	@Override
	public AdLog findMaxLogByUId(Integer uid) {
		try {
			AdLog adLog = this.adLogDAO.findMaxLogByUID(uid);
			if (adLog!=null) {
				return adLog;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public AdLogDAO getAdLogDAO() {
		return adLogDAO;
	}

	public void setAdLogDAO(AdLogDAO adLogDAO) {
		this.adLogDAO = adLogDAO;
	}

	@Override
	public List<AdLog> findSevenLog() {
		// TODO Auto-generated method stub
		try {
			List<AdLog> list = this.adLogDAO.findSevenLog();
			if (list!=null) {
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}


}
