package com.light.handler;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.light.pojo.OrderDisplay;
import com.light.pojo.Orders;
import com.light.pojo.Users;
import com.light.service.IOrdersService;

public class OrdersHandler extends MultiActionController {

	private IOrdersService ordersServiceImpl;

	public void setOrdersServiceImpl(IOrdersService ordersServiceImpl) {
		this.ordersServiceImpl = ordersServiceImpl;
	}
	
	
	public OrdersHandler()
	{
		super();
		
	}
	
	public ModelAndView selectOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		ModelAndView modelAndView = new ModelAndView();
		Orders order =new Orders();
		//List<orders> orders = order.selectLight(light);
		
		request.getSession().setAttribute("Light", order);
		modelAndView.setViewName("/usercart.jsp");
		return modelAndView;
	}
	
	
	public ModelAndView userDisplay(HttpServletRequest request, HttpServletResponse response) throws IOException{
	
	JSONArray jsonArray = new JSONArray();
	String userId = request.getParameter("userId");
	
	List<OrderDisplay> list=ordersServiceImpl.DisplayselectOrders(userId);
	// System.out.println(ordersServiceImpl.DisplayselectOrders("1", "1")+"************************");
	
//	Users user = new Users();
//	user.setUserId(1);
//	List<Light> list = iMyShopCartService.selectMyShopCart(user);
//	System.out.println(list);
	String json = JSONObject.toJSONString(list);
	System.out.println(json+"************************");
	response.getWriter().print(json);
//	System.out.println("--------------------------userid"+userId);
//	
	return null;
	
     }
	
	public ModelAndView userDelectorders(HttpServletRequest request, HttpServletResponse response) throws IOException{

		String orderId = request.getParameter("orderId");
		System.out.println("--------------------------orderId:"+orderId);
		String s ="";
		for(int i=0;i<orderId.length();i++)
		{
			
			if(orderId.charAt(i)==',')
			{
				ordersServiceImpl.userDeleteOrders(s);
				System.out.println("--------------------------s1:"+s);
				s="";
				
			}
			else
			{
			//	System.out.println("--------------------------s:"+s+orderId.charAt(i));
				s=s+orderId.charAt(i);
				
				
			}
			
		}
	//	ordersServiceImpl.userDeleteOrders(orderId);
		
	//	
		return null;
		
	     }
	
	
	public ModelAndView userOrderDisplay(HttpServletRequest request, HttpServletResponse response) throws IOException{
		JSONArray jsonArray = new JSONArray();
		String orderId = request.getParameter("orderId");
		Orders orders=new Orders();
		orders.setOrderId(orderId);
		List<OrderDisplay> list=ordersServiceImpl.UserIdOrdersDisplay(orders);
		ordersServiceImpl.userUpdateOrders(orderId,"4");
		// System.out.println(ordersServiceImpl.DisplayselectOrders("1", "1")+"************************");
		
//		Users user = new Users();
//		user.setUserId(1);
//		List<Light> list = iMyShopCartService.selectMyShopCart(user);
		System.out.println(orderId);
		String json = JSONObject.toJSONString(list);
		System.out.println("json"+json+"************************");
		response.getWriter().print(json);
//		System.out.println("--------------------------userid"+userId);
	//	
	
		return null;
		
	     }
	
	
	public ModelAndView userOrderDisplay2(HttpServletRequest request, HttpServletResponse response) throws IOException{
		JSONArray jsonArray = new JSONArray();
		String orderId = request.getParameter("orderId");
		Orders orders=new Orders();
		orders.setOrderId(orderId);
		List<OrderDisplay> list=ordersServiceImpl.UserIdOrdersDisplay(orders);
		
		// System.out.println(ordersServiceImpl.DisplayselectOrders("1", "1")+"************************");
		
//		Users user = new Users();
//		user.setUserId(1);
//		List<Light> list = iMyShopCartService.selectMyShopCart(user);
		System.out.println(orderId);
		String json = JSONObject.toJSONString(list);
		System.out.println("json"+json+"************************");
		response.getWriter().print(json);
//		System.out.println("--------------------------userid"+userId);
	//	
		return null;
		
	     }
	
	public ModelAndView UnsubscribeOrder(HttpServletRequest request, HttpServletResponse response) throws IOException{
		JSONArray jsonArray = new JSONArray();
		String orderId = request.getParameter("orderId");
	//	Orders orders=new Orders();
		//orders.setOrderId("1");
		ordersServiceImpl.userUpdateOrders("1","4");
		 System.out.println("orderId"+orderId+"**********************3333**");
	
		return null;
		
	     }
	
	/*****/
	public String selectmyorders(HttpServletRequest request, HttpServletResponse response) throws IOException{
		int userId = Integer.valueOf(request.getParameter("userId"));
		Orders orders = new Orders(); 
		orders.setUserId(userId);
		orders.setOrderStateId(1);
		List<OrderDisplay> list = ordersServiceImpl.selectmyorders(orders);
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
		System.out.println(orders);
		return null;
	}
	
	public String AllPN(HttpServletRequest request, HttpServletResponse response) throws IOException{
		int userId = Integer.valueOf(request.getParameter("userId"));
		Orders orders = new Orders(); 
		orders.setUserId(userId);
		orders.setOrderStateId(1);
		List<OrderDisplay> list = ordersServiceImpl.AllPN(orders);
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
		System.out.println(orders);
		return null;
	}
	
	public String updateOrder(HttpServletRequest request, HttpServletResponse response) throws IOException{
		int userId = Integer.valueOf(request.getParameter("userId"));
		Users users = new Users();
		users.setUserId(userId);
		ordersServiceImpl.updateOrder(users);
		return null;
	}
	
	public String updateOS(HttpServletRequest request, HttpServletResponse response) throws IOException{
		int userId = Integer.valueOf(request.getParameter("userId"));
		Orders orders = new Orders();
		orders.setUserId(userId);
		orders.setOrderStateId(2);
		orders.setOrderState("待发货");
		ordersServiceImpl.updateOS(orders);
		return null;
	}
	
	
	
//	订单信息查询
	public ModelAndView  selectOrders(HttpServletRequest request, HttpServletResponse response) throws IOException{
		System.out.print("jhsfsaha");
		JSONArray jsonArray = new JSONArray();
		Orders orders =new Orders();
		List<Orders> list =ordersServiceImpl.selectOrders(orders);
		String json = JSONObject.toJSONString(list);
		System.out.println("list:"+list);
		response.getWriter().print(json);
		return null;
	}
	
	
	public String UpdateOrderstateId(HttpServletRequest request, HttpServletResponse response) throws IOException{
		JSONArray jsonArray = new JSONArray();
		String orderId = request.getParameter("orderId");
		String orderStateId = request.getParameter("ordertStateId");
	    System.out.println("orderId:"+orderId+"*****************"+orderStateId);

		ordersServiceImpl.userUpdateOrders(orderId,orderStateId);
		return null;
		
	     }
	
	public  String  deleteOrders(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String orderId = request.getParameter("orderId");
		Orders orders =new Orders();
		orders.setOrderId(orderId);
		ordersServiceImpl.deleteOrders(orders);
		return null;
	}
	
}
