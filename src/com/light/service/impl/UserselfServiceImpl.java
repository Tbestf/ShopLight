package com.light.service.impl;

import java.util.List;

import com.light.dao.IUserDao;
import com.light.pojo.Users;
import com.light.service.IUserselfService;

public class UserselfServiceImpl implements IUserselfService {
	
	private IUserDao iUserDao;
	
	public void setiUserDao(IUserDao iUserDao) {
		this.iUserDao = iUserDao;
	}
	
	public UserselfServiceImpl() {
		super();
	}
	@Override
	public List<Users> selectusers(Users users) {
		
		return iUserDao.selectusers(users);
	}
	

	@Override
	public int updateusers(Users users) {
		
		return iUserDao.updateusers(users);
	}

}
