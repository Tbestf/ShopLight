package com.light.dao.impl;

import org.apache.ibatis.session.SqlSessionFactory;

import com.light.dao.IUserinfoDao;
import com.light.pojo.Users;

/**
 * 用户信息的 数据访问层 实现类
 * @author w
 */
public class UserinfoDaoImpl implements IUserinfoDao {
	
	//依赖于sqlSessionFactory
	private SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public int userRegisterOperator(Users users) {
		return sqlSessionFactory.openSession().insert("com.light.mapper.UserMapper.usersave", users);
	}

}
