package com.light.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import org.w3c.dom.Document;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.light.pojo.Users;
import com.light.service.IUserinfoService;
import com.light.service.IUserselfService;
import com.light.service.UserService;
/**
 * 用户信息的 handler5
 * @version 1.0
 */
public class UserDataHandler extends MultiActionController {
	
	public UserDataHandler(){
		
	}
	
	//依赖于业务逻辑层的接口
	private IUserselfService iUserselfService;

	public void setiUserselfService(IUserselfService iUserselfService) {
		this.iUserselfService = iUserselfService;
	}
	
	/**
	 * 用户信息查询
	 * @param request
	 * @param response
	 */
	
	public String selectusers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int userId = Integer.valueOf(request.getParameter("uid"));
		Users users = new Users();
		users.setUserId(userId);
		List<Users> list = iUserselfService.selectusers(users);	
		System.out.println("111111"+list);
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
	    
		return null;
	}
	
	/**
	 * 用户信息修改
	 * @param request
	 * @param response
	 */
	public String updateusers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String uid = (String) request.getSession().getAttribute("uid");
		int userId = Integer.valueOf(uid);
		Users users = new Users();
		String userName = request.getParameter("userName");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String gender = request.getParameter("optionsRadios");
		String postalCode = request.getParameter("postalCode");
		users.setUserId(userId);
		users.setUserName(userName);
		users.setAddress(address);
		users.setEmail(email);
		users.setGender(gender);
		users.setPostalCode(postalCode);
		iUserselfService.updateusers(users);
		return null;
	}

}
