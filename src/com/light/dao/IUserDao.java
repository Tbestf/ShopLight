package com.light.dao;

import java.util.List;

import com.light.pojo.Users;

public interface IUserDao {
	
	/**
	 * 查询用户个人信息
	 * @param users
	 * @return 返回一个List数组
	 */
	List<Users> selectusers(Users users);
	/**
	 * 修改用户个人信息
	 * @param users 
	 * @return 
	 */
	int updateusers(Users users);
}
