package com.light.service;

import java.util.List;

import com.light.dao.IUserInformation;
import com.light.pojo.Users;

public interface IUserInformationService {
    
	  //获取User对象
    List<Users> selectUsers();
		//获取已删除的User对象
	List<Users> selectDelectUsers();
		
	int delectUsers(Users users);
		
	int updateUser(Users users);
		
	int updatePassword(Users users);
		
	int updateState(Users users);
}
