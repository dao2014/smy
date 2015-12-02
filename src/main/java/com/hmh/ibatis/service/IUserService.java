package com.hmh.ibatis.service;

import java.util.List;

import com.hmh.ibatis.model.User;

public interface IUserService {
	/**
	 * 添加用户信息
	 * @param user
	 * @return
	 */
	public int addUser(User user);
	
	/**
	 * 将用户信息添加到特定的表中
	 * @param tablename table为数据源的模值，如果是0为主库
	 * @param user
	 * @return
	 */
	public int addTableUser(User user);
	
	/**
	 * 查询用户列表
	 * @return
	 */
	public List<User> selectUsers();
	
	/**
	 * 更新用户
	 * @param user
	 * @return
	 */
	public int updateUser(User user);
	
	/**
	 * 删除用户
	 * @param id
	 * @return
	 */
	public int deleteUser(int id);
	
	/**
	 * 得到一个用户信息
	 * @param id
	 * @return
	 */
	public User getUser(int id);
	
	/**
	 * 查询分布式库中的数据
	 * @param id
	 * @return
	 */
	public User getTableUser(String userId);
}
