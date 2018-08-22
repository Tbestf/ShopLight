package com.light.service;

import java.util.List;

import com.light.pojo.Users;

public interface IUsersService {
	/**
	 * 查询用户
	 * @param users
	 * @return
	 */
	List<Users> selectUsers(Users users);
	
	/**
	 * 修改用户最后登录时间
	 * @param users
	 * @return
	 */
	int updateTimeUsers(Users users);
	
}
