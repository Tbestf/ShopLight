package com.light.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.light.dao.UserloginDao;
import com.light.pojo.Users;

public class UserloginDaoImpl implements UserloginDao {
	
	private SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public UserloginDaoImpl() {
		super();
	}

	@Override
	public String selectloginPwd(Users users) {
		
		SqlSession sqlsession=sqlSessionFactory.openSession();
		String result = sqlsession.selectOne("com.light.mapper.UserMapper.selectloginPwd",users);
		return result;
	}


}
