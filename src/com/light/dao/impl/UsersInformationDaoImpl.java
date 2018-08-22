package com.light.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.light.dao.IUserInformation;
import com.light.pojo.Orders;
import com.light.pojo.Users;

public class UsersInformationDaoImpl implements IUserInformation {

	public UsersInformationDaoImpl() {
		super();
	}

	//依赖于sqlSessionFactory
	private SqlSessionFactory sqlSessionFactory;
			
     /**
	* 配置文件通过set方法注入SqlSessionFactory
	 * @param sqlsessionfactory
	 */
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<Users> selectUsers() {
		// TODO Auto-generated method stub
//		System.out.println("//////////////");
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Map<String,Object>> list = new ArrayList();
		list=sqlsession.selectList("com.light.mapper.UsersInformation.selectUsers");
		
		
	//	System.out.println(sqlsession.selectList("com.light.mapper.UsersInformation.selectUsers"));
		return null;
	}

	@Override
	public List<Users> selectDelectUsers() {
		// TODO Auto-generated method stub
		SqlSession sqlsession =sqlSessionFactory.openSession();
		List<Users> list =new ArrayList();
		list =sqlsession.selectList("com.light.mapper.UsersInformation.selectDelectUsers");
		return list;
	}

	@Override
	public int delectUsers(Users users) {
		SqlSession sqlsession =sqlSessionFactory.openSession();
	//	List<Users> list =new ArrayList();
       	int	list =sqlsession.delete("com.light.mapper.UsersInformation.delectUsers",users);
		return list;
	}

	@Override
	public int updateUser(Users users) {
		// TODO Auto-generated method stub
		SqlSession sqlsession =sqlSessionFactory.openSession();
		//	List<Users> list =new ArrayList();
	  	int	list =sqlsession.update("com.light.mapper.UsersInformation.updateUser",users);
		return list;
	}

	@Override
	public int updatePassword(Users users) {
		// TODO Auto-generated method stub
		SqlSession sqlsession =sqlSessionFactory.openSession();
		//	List<Users> list =new ArrayList();
	  	int	list =sqlsession.update("com.light.mapper.UsersInformation.updatePassword",users);
		return list;
	}

	@Override
	public int updateState(Users users) {
		// TODO Auto-generated method stub
		SqlSession sqlsession =sqlSessionFactory.openSession();
		//	List<Users> list =new ArrayList();
	    int	list =sqlsession.update("com.light.mapper.UsersInformation.updateState",users);
		return list;
	}
	
	@Test
	public void selectUsers1() {
		System.out.println("11111111111111111111111");
		ApplicationContext ctx=null;
		
		ctx=new ClassPathXmlApplicationContext("applicationcontext_main.xml");
		 
		
		System.out.println( ctx.getBean("usersInformationService")+"_1");
		//System.out.println(usersInformationDaoImpl.selectUsers()+"_1");
//		Light light =new Light(2,2,2,2,"2","2","2",2,2,"2","2");
//		List<Light> lights = new ArrayList();
//		lights.add(light);
		
		
//		iLightDao.insertLight(light);
//		iLightDao.deleteLight(light);
//		iLightDao.updateLight(light);
//		iLightDao.selectLight(light);
		
		//return usersInformationDaoImpl.selectUsers();
		}
	

	
	
}
