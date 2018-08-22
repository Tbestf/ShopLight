package com.light.service.impl;

import java.util.List;

import com.light.dao.IUsersDao;
import com.light.pojo.Users;
import com.light.service.IUsersService;

public class UsersServiceImpl implements IUsersService {

	private IUsersDao iUsersDao;
	
	public UsersServiceImpl() {
		super();
	}

	public void setiUsersDao(IUsersDao iUsersDao) {
		this.iUsersDao = iUsersDao;
	}

	@Override
	public List<Users> selectUsers(Users users) {
		
		return iUsersDao.selectUsers(users);
	}

	@Override
	public int updateTimeUsers(Users users) {
		
		return iUsersDao.updateTimeUsers(users);
	}
	
}
