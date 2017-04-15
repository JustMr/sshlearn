package com.adL.dao;

import java.util.List;

import com.adL.bean.SafeUser;

public interface UserDAO {

	/**
	 *根据id查找用户
	 *@param id 需要查找的用户id
	 */
	SafeUser get(String id);
	
	/**
	 * 增加用户
	 * @param user 需要增加的用户
	 */
	void save(SafeUser user);
	
	/**
	 * 修改用户
	 * @param user 需要修改的用户
	 */
	void update(SafeUser user);
	
	 /**

     * 删除用户

     * @param id 需要删除的用户id

     */ 
    void delete(String id);

    /**

     * 删除用户

     * @param user 需要删除的用户

     */ 
    void delete(SafeUser user);

    /**

     * 查询全部用户

     * @return 获得全部用户

     */
    List<SafeUser> findAll();

    /**

     * 根据用户名，密码查找用户

     * @param username 查询所需的用户名

     * @param pass 查询所需的密码

     * @return 对应的用户

     */

    SafeUser findUserByNameAndPass(String username , String password);
    
    /**

     * 根据用户ID查找用户

     * @param safeId 查询所需的用户ID

     * @return 对应的用户

     */
    SafeUser finUserById(String safeId);
    
    /**

     * 根据safeusername查找用户

     * @param safeusername 查询所需的用户

     * @return 对应的用户

     */
    List<SafeUser> findUserByName(String username);
}
