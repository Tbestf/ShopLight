package com.light.dao;

import java.util.List;

import com.light.pojo.Users;

public interface UserloginDao {
	
	/**
	 * 登录功能
	 * @param users
	 * @return
	 */
	String selectloginPwd(Users users);
	
}
