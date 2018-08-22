package com.light.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.light.dao.IUserInformation;
import com.light.dao.impl.LightDaoImpl;
import com.light.dao.impl.UsersInformationDaoImpl;
import com.light.pojo.Users;
import com.light.service.IUserInformationService;

public class UsersInformationService implements IUserInformationService {

	
	public UsersInformationService()
	{
		super();
	}
	
	private UsersInformationDaoImpl usersInformationDaoImpl;
	
	
	

	public void setUsersInformationDaoImpl(UsersInformationDaoImpl usersInformationDaoImpl) {
		this.usersInformationDaoImpl = usersInformationDaoImpl;
	}

	@Override
	public List<Users> selectUsers() {
		return usersInformationDaoImpl.selectUsers();

	}

	@Override
	public List<Users> selectDelectUsers() {
		// TODO Auto-generated method stub
		return usersInformationDaoImpl.selectDelectUsers();
	}

	@Override
	public int delectUsers(Users users) {
		// TODO Auto-generated method stub
		return usersInformationDaoImpl.delectUsers(users);
	}

	@Override
	public int updateUser(Users users) {
		// TODO Auto-generated method stub
		return usersInformationDaoImpl.updateUser(users);
	}

	@Override
	public int updatePassword(Users users) {
		// TODO Auto-generated method stub
		return usersInformationDaoImpl.updatePassword(users);
	}

	@Override
	public int updateState(Users users) {
		// TODO Auto-generated method stub
		return usersInformationDaoImpl.updateState(users);
	}
	@Test
	public void selectUsers1() {
		System.out.println("11111111111111111111111");
		ApplicationContext ctx=null;
		
		ctx=new ClassPathXmlApplicationContext("applicationcontext_main.xml");
		UsersInformationDaoImpl usersInformationDaoImpl= (UsersInformationDaoImpl) ctx.getBean("usersInformationDaoImpl");
		
		System.out.println(usersInformationDaoImpl);
		System.out.println(usersInformationDaoImpl.selectUsers());
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
