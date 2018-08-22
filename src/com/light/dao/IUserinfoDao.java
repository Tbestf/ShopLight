package com.light.dao;

import com.light.pojo.Users;

	/**
	 * 用户信息的 数据访问层 的接口
	 */
public interface IUserinfoDao {
	/**
	 * 用户注册操作
	 * @param Users
	 */
	int userRegisterOperator(Users users);
}
