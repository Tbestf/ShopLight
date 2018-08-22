package com.light.service.impl;

import java.util.List;

import com.light.dao.UserloginDao;
import com.light.pojo.Users;
import com.light.service.UserService;


public class UserServiceImpl implements UserService {
	
	private UserloginDao userloginDao;

	public void setUserloginDao(UserloginDao userloginDao) {
		this.userloginDao = userloginDao;
	}
	
	public UserServiceImpl() {
		super();
	}
	@Override
	public String selectloginPwd(Users users) {
		return userloginDao.selectloginPwd(users);
	} 
}
