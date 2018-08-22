package com.light.handler;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import org.w3c.dom.Document;

import com.light.pojo.Users;
import com.light.service.IUserinfoService;
import com.light.service.IUsersService;
import com.light.service.UserService;
/**
 * 用户信息的 handler5
 * @version 1.0
 */
public class UserLoginHandler extends MultiActionController {
	
	public UserLoginHandler(){

	}
	
	//依赖于业务逻辑层的接口
	private UserService userService;
	private IUsersService iUsersService;
	

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setiUsersService(IUsersService iUsersService) {
		this.iUsersService = iUsersService;
	}


	/**
	 * 用户登录
	 * @param request
	 * @param response
	 * @param userinfo
	 */
	
	public ModelAndView selectloginPwd(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String loginId = request.getParameter("username");
		ModelAndView modelAndView = new ModelAndView();
		Users users = new Users();
		users.setLoginId(loginId);
		String result = userService.selectloginPwd(users);
		if(result == null)
		{
			System.out.println("账号没找到---"+result);
			modelAndView.setViewName("/login.jsp");
		}else{
			if(result.equals(request.getParameter("password"))){
				users.setLoginPwd(result);
				List<Users> list = iUsersService.selectUsers(users);
				users = list.get(0);
				if(users.getUserRoleId() == 2){
					modelAndView.setViewName("/member-list.jsp");
				}
				else{
					String uid = String.valueOf(users.getUserId())+"";
					request.getSession().setAttribute("uid",uid);
					request.getSession().setAttribute("un",users.getLoginId());
					modelAndView.setViewName("/index.jsp");
				}
			}
			else{
				System.out.println("密码不正确---"+result);
				modelAndView.setViewName("/login.jsp");
			}
		}
		return modelAndView;
	}
	
	public ModelAndView exit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	    String lastLoginTime = df.format(new Date());// new Date()为获取当前系统时间
	    String uid =  (String) request.getSession().getAttribute("uid");
	    int userId = Integer.valueOf(uid);
	    Users users = new Users();
	    users.setUserId(userId);
	    users.setLastLoginTime(lastLoginTime);
	    iUsersService.updateTimeUsers(users);
		request.getSession().invalidate();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/index.jsp");
		return modelAndView;

	}
	
}
