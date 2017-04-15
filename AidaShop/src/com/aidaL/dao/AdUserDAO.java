package com.aidaL.dao;

import java.util.List;

import com.aidaL.bean.AdCustomer;

public interface AdUserDAO {
	/**
	 *根据id查找用户
	 *@param id 需要查找的用户id
	 */
	AdCustomer get(Integer id);
	
	/**
	 * 增加用户
	 * @param user 需要增加的用户
	 */
	void save(AdCustomer user);
	
	/**
	 * 修改用户
	 * @param user 需要修改的用户
	 */
	void update(AdCustomer user);
	
	 /**

     * 删除用户

     * @param id 需要删除的用户id

     */ 
    void delete(Integer id);

    /**

     * 删除用户

     * @param user 需要删除的用户

     */ 
    void delete(AdCustomer user);

    /**

     * 查询全部用户

     * @return 获得全部用户

     */
    List<AdCustomer> findAll();

    /**

     * 根据用户名，密码查找用户

     * @param username 查询所需的用户名

     * @param pass 查询所需的密码

     * @return 对应的用户

     */

    AdCustomer findUserByNameAndPass(String username , String password);

    /**
     * 根据ID查找用户
     * @param id 用户ID
     * @return 整条用户信息
     */
	AdCustomer finCustById(Integer id);

	/**
	 * 查询vip用户
	 * @return
	 */
	List<AdCustomer> finVIPCust();

	/**
	 * 查询已认证和认证中的造型师
	 * @return
	 */
	List<AdCustomer> findStyleCust();
}
