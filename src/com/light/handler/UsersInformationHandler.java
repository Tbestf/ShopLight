package com.light.handler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.light.pojo.OrderDisplay;
import com.light.pojo.Orders;
import com.light.pojo.Users;
import com.light.service.IUserInformationService;

public class UsersInformationHandler extends MultiActionController {
    
	private IUserInformationService usersInformationService;

	public void setUsersInformationService(IUserInformationService usersInformationService) {
		this.usersInformationService = usersInformationService;
	}
	
	public UsersInformationHandler()
	{
		super();
	}
	
	public ModelAndView selectUsers(HttpServletRequest request, HttpServletResponse response) throws IOException{
	
		List<Users> list=usersInformationService.selectUsers();
		// System.out.println(ordersServiceImpl.DisplayselectOrders("1", "1")+"************************");

		String json = JSONObject.toJSONString(list);
		System.out.println("json"+json+"************************");
		response.getWriter().print(json);

		return null;
		
	     }
	
	public ModelAndView selectDelectUsers(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		List<Users> list=usersInformationService.selectDelectUsers();
		// System.out.println(ordersServiceImpl.DisplayselectOrders("1", "1")+"************************");

		String json = JSONObject.toJSONString(list);
		System.out.println("json"+json+"************************");
		response.getWriter().print(json);

		return null;
		
	     }
	
        public ModelAndView delectUsers(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
	    
	    String userId =request.getParameter("userId");
	    Users  users=new Users();
	    users.setUserId(Integer.parseInt(userId));	
		int list=usersInformationService.delectUsers(users);
		
		return null;
		
	     }
        
        
        public ModelAndView updateUser(HttpServletRequest request, HttpServletResponse response,@ModelAttribute Users users) throws IOException{
        	
        	
        	String userId=request.getParameter("userId");
        //	System.out.println(userId+"---"+users);
      
    		int list=usersInformationService.updateUser(users);
    	    return null;
    		
    	 }
        
        public ModelAndView updatePassword(HttpServletRequest request, HttpServletResponse response,@ModelAttribute Users users) throws IOException{
        	
        	String userId=request.getParameter("userId");
            System.out.println(userId+"---"+users);
    		int list=usersInformationService.updatePassword(users);
    	    return null;
    		
    	 }
        
        public ModelAndView updateState(HttpServletRequest request, HttpServletResponse response,@ModelAttribute Users users) throws IOException{
        	
    		int list=usersInformationService.updateState(users);
    	    return null;
    		
    	 }
        
        
      
	
	
}
