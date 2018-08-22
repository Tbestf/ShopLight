package com.light.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.light.dao.IUsersDao;
import com.light.pojo.Users;

public class UsersDaoImpl implements IUsersDao{

	//依赖于sqlSessionFactory
	private SqlSessionFactory sqlSessionFactory;
		
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
		
	public UsersDaoImpl() {
		super();
	}

	@Override
	public List<Users> selectUsers(Users users) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Users> list = sqlsession.selectList("com.light.mapper.UserMapper.selectUsers",users);
		return list;
	}

	@Override
	public int updateTimeUsers(Users users) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.update("com.light.mapper.UserMapper.updateTimeUsers",users);
		return result;
	}
	
}
