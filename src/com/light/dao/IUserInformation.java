package com.light.dao;
import java.util.List;

import com.light.pojo.*;
public interface IUserInformation {
    //获取User对象
	List<Users> selectUsers();
	//获取已删除的User对象
	List<Users> selectDelectUsers();
	
	int delectUsers(Users users);
	
	int updateUser(Users users);
	
	int updatePassword(Users users);
	
	int updateState(Users users);
}
