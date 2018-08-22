package com.light.service;

import com.light.pojo.Users;
	/**
	 * 用户信息的 业务逻辑的接口
	 */
public interface IUserinfoService {
	/**
	 * 用户注册操作
	 * @param userinfo
	 */
	int userRegisterOperator(Users users);
}
