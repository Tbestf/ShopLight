package com.light.service.impl;

import com.light.dao.IUserinfoDao;
import com.light.pojo.Users;
import com.light.service.IUserinfoService;
	/**
	 * 用户信息的 业务逻辑 实现类
	 */
public class UserinfoServiceImpl implements IUserinfoService {
	
	//依赖于数据访问层的接口
	private IUserinfoDao userinfoDao;

	public void setUserinfoDao(IUserinfoDao userinfoDao) {
		this.userinfoDao = userinfoDao;
	}

	@Override
	public int userRegisterOperator(Users users) {
		return userinfoDao.userRegisterOperator(users);
	}
}
