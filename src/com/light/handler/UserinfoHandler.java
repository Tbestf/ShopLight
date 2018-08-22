package com.light.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;


import com.light.pojo.Users;
import com.light.service.IUserinfoService;
/**
 * 用户信息的 handler
 * @author wenzhiwu
 * @2017年5月10日下午2:49:55
 * @version 1.0
 */
public class UserinfoHandler extends MultiActionController {
	
	public UserinfoHandler(){
		
	}
	
	//依赖于业务逻辑层的接口
	private IUserinfoService iuserinfoService;
	
	public void setIuserinfoService(IUserinfoService iuserinfoService) {
		this.iuserinfoService = iuserinfoService;
	}



	/**
	 * 用户注册
	 * @param request
	 * @param response
	 * @param userinfo
	 */
	public ModelAndView userRegister(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		Users users = new Users();
		users.setLoginId(request.getParameter("uname"));
		users.setLoginPwd(request.getParameter("uiPass"));
		users.setPhone(request.getParameter("pname"));
		int result = iuserinfoService.userRegisterOperator(users);
		modelAndView.setViewName("/login.jsp");
		return modelAndView;
		
	
	}
	
}
