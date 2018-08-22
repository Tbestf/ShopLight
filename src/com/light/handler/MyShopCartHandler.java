package com.light.handler;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.light.pojo.Light;
import com.light.pojo.Orders;
import com.light.pojo.Users;
import com.light.pojo.MyShopCart;
import com.light.service.IMyShopCartService;


public class MyShopCartHandler extends MultiActionController {
	
	private IMyShopCartService iMyShopCartService;

	public void setiMyShopCartService(IMyShopCartService iMyShopCartService) {
		this.iMyShopCartService = iMyShopCartService;
	}

	public MyShopCartHandler() {
		super();
	}
	
	public ModelAndView MyShopCart(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView modelAndView = new ModelAndView();
		String uid = request.getParameter("uid");
		if(uid.equals("*")){
			modelAndView.setViewName("/login.jsp");
			System.out.println("该用户为游客，未登录，未能找到购物车！");
		}
		else{
			modelAndView.setViewName("/usercart.jsp");
			System.out.println("该用户Id为"+uid+"，已登录，已找到购物车！");
		}
		
		return modelAndView;
		
	}
	
	public ModelAndView addcart(HttpServletRequest request, HttpServletResponse response){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/usercart.jsp");
		return modelAndView;
		
	}
	
	public String selectMyShopCart(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		int userId = Integer.valueOf(request.getParameter("uid"));
		Users user = new Users();
		user.setUserId(userId);
		List<Light> list = iMyShopCartService.selectMyShopCart(user);
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
		return null;
		
	}
	
	public String addMyShopCart(HttpServletRequest request, HttpServletResponse response) throws IOException{	
		
		int userId = Integer.valueOf(request.getParameter("uid"));
		int lightId = Integer.valueOf(request.getParameter("lightId"));
		int number = Integer.valueOf(request.getParameter("number"));
		MyShopCart shopCart = new MyShopCart();
		shopCart.setUserId(userId);
		shopCart.setLightId(lightId);
		shopCart.setNumber(number);
		iMyShopCartService.addcart(shopCart);
		return null;
	}
	
	public String deleteMyShopCart(HttpServletRequest request, HttpServletResponse response) throws IOException{	
		
		int shopCartId = Integer.valueOf(request.getParameter("shopCartId"));
		iMyShopCartService.deleteMyShopCart(shopCartId);
		return null;
	}
	
	public String deleteAllMyShopCart(HttpServletRequest request, HttpServletResponse response) throws IOException{	
		String shopCartid = request.getParameter("shopCartId");
		String s ="";
		for(int i=0;i<shopCartid.length();i++)
		{
			
			if(shopCartid.charAt(i)==',')
			{
				int shopCartId = Integer.valueOf(s);
				iMyShopCartService.deleteMyShopCart(shopCartId);
				s="";
			}
			else
			{
				s=s+shopCartid.charAt(i);
			}
		}
		return null;
	}
	
	public String CleanMyShopCart(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		int userId = Integer.valueOf(request.getParameter("uid"));
		iMyShopCartService.CleanMyShopCart(userId);
		return null;
	}
	
	public String updateMyShopCart(HttpServletRequest request, HttpServletResponse response) throws IOException{
		int shopCartId = Integer.valueOf(request.getParameter("shopCartId"));
		int number = Integer.valueOf(request.getParameter("number"));
		MyShopCart shopCart = new MyShopCart();
		shopCart.setShopCartId(shopCartId);
		shopCart.setNumber(number);
		iMyShopCartService.updateMyShopCartNum(shopCart);
		return null;
	}
	public String addorders(HttpServletRequest request, HttpServletResponse response) throws IOException{
		int userId = Integer.valueOf(request.getParameter("userId"));
		int lightId = Integer.valueOf(request.getParameter("lightId"));
		int buyQuantity = Integer.valueOf(request.getParameter("buyQuantity"));
		int totalPrice = Integer.valueOf(request.getParameter("totalPrice"));
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	    String orderDate = df.format(new Date());// new Date()为获取当前系统时间
		SimpleDateFormat df2 = new SimpleDateFormat("yyyyMMdd");//设置日期格式
	    String date = df2.format(new Date());// new Date()为获取当前系统时间
	    String orderId = date + ((int) (Math.random()*100));
	    System.out.println(orderId+"*****");
		Orders order = new Orders();
		order.setOrderId(orderId);
		order.setUserId(userId);
		order.setBuyQuantity(buyQuantity);
		order.setLightId(lightId);
		order.setTotalPrice(totalPrice);
		order.setOrderStateId(1);
		order.setOrderDate(orderDate);
		order.setOrderState("待支付");
		order.setShowOrNot(1);
		System.out.println(order);
		iMyShopCartService.addorder(order);
		return null;
	}
}
