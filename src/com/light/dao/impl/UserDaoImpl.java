package com.light.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.light.dao.IUserDao;
import com.light.pojo.Users;

public class UserDaoImpl implements IUserDao {
	
	//依赖于sqlSessionFactory
	private SqlSessionFactory sqlSessionFactory;
		
	/**
	* 配置文件通过set方法注入SqlSessionFactory
	* @param sqlsessionfactory
	*/
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public UserDaoImpl(){
		super();
	}
		
	@Override
	public List<Users> selectusers(Users users) {
		
		SqlSession sqlsession=sqlSessionFactory.openSession();
		List<Users> list = new ArrayList();
		list = sqlsession.selectList("com.light.mapper.UserMapper.selectusers",users);
		return list;
	}

	@Override
	public int updateusers(Users users) {
		
		SqlSession sqlsession=sqlSessionFactory.openSession();
		int result =sqlsession.update("com.light.mapper.UserMapper.updateusers",users);
		return result;
	}

}
