package com.light.service;

import java.util.List;

import com.light.pojo.Users;

public interface UserService {
	//处理前台登录
	String selectloginPwd(Users users);
}
