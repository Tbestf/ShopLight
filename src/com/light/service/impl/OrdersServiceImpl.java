package com.light.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.light.dao.IOrdersDao;
import com.light.pojo.OrderDisplay;
import com.light.pojo.Orders;
import com.light.pojo.Users;
import com.light.service.IOrdersService;

public  class OrdersServiceImpl implements IOrdersService{
     
	private Map<String,String>map=new HashMap();
	
	//渚濊禆鏁版嵁璁块棶灞傛帴鍙�
	private IOrdersDao iOrdersDao;

	public void setiOrdersDao(IOrdersDao iOrdersDao) {
				this.iOrdersDao = iOrdersDao;
	}
		
		
	
	@Override
	public int insertOrders(List<Orders> orders) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteOrders(Orders orders) {
		// TODO Auto-generated method stub
		
		return iOrdersDao.deleteOrders(orders);
	}

	@Override
	public int updateOrders(Orders orders) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	@Override
	public int userDeleteOrders(String orderId) {
		// TODO Auto-generated method stub
	Orders orders =new Orders();
	orders.setOrderId(orderId);
	orders.setOrderStateId(0);
	orders.setOrderState("宸插垹闄�");
	System.out.println("---------------------"+orders);
	
	return iOrdersDao.userUpdateOrders(orders);
	
	}
	
	@Override
	public int userUpdateOrders(String orderId,String orderStateId) {
		// TODO Auto-generated method stub
   //map.put("1", "寰呮敮浠�");
	 map.put("0","宸插垹闄�"); map.put("1", "寰呭彂璐�");
	 map.put("2", "宸插彂璐�");map.put("3", "璁㈠崟瀹屾垚");map.put("4", "鍞悗涓�");map.put("5", "鍞悗瀹屾垚");
	 
	Orders orders =new Orders();
	orders.setOrderId(orderId);
	orders.setOrderStateId(Integer.parseInt(orderStateId)+1);
	
	System.out.println(orders+"............"+map.get(orderStateId));
	orders.setOrderState(map.get(orderStateId));
	return iOrdersDao.userUpdateOrders(orders);
	
	}
	@Override
	public List<OrderDisplay > UserIdOrdersDisplay(Orders orders)
	{
	
		
	//	iOrdersDao.userselectOrders(orders);
	//	System.out.println(orders+"............");
		return iOrdersDao.userIdOrdersDisplay(orders);
		
	}
	

	@Override
	public List<OrderDisplay > DisplayselectOrders(String userId)
	{
		Orders orders =new Orders();
		orders.setUserId(Integer.parseInt(userId));
	
	//	iOrdersDao.userselectOrders(orders);
	//	System.out.println(orders+"............");
		return iOrdersDao.DisplayselectOrders(orders);
		
	}

	@Override
	public List<Orders> selectOrders(Orders orders) {
		iOrdersDao.selectOrders(orders);
		System.out.println(iOrdersDao.orderIdselectOrders(orders));
		return iOrdersDao.selectOrders(orders);
	}
	
	@Override
	public List<OrderDisplay> DetailordersDisplay(Orders orders) {
		//System.out.println(iOrdersDao.totalselectOrders(orders));
		return iOrdersDao.detailordersDisplay(orders);
	}
	
	
	@Override
	public List<Orders> totalselectOrders(Orders orders) {
		System.out.println(iOrdersDao.totalselectOrders(orders));
		return null;
	}



	@Override
	public List<OrderDisplay> selectmyorders(Orders orders) {
		
		return iOrdersDao.selectmyorders(orders);
	}



	@Override
	public List<OrderDisplay> AllPN(Orders orders) {
		
		return iOrdersDao.AllPN(orders);
	}



	@Override
	public int updateOrder(Users users) {
		
		return iOrdersDao.updateOrder(users);
	}



	@Override
	public int updateOS(Orders orders) {
		
		return iOrdersDao.updateOS(orders);
	}
	
	@Test
	public void selectOrders1() {
		System.out.println("11111111111111111111111");
		ApplicationContext ctx=null;
		
		ctx=new ClassPathXmlApplicationContext("applicationcontext_main.xml");
		System.out.println("11111111111111111111111");
		iOrdersDao=(IOrdersDao) ctx.getBean("OrdersDaoImpl");
	//	System.out.println(ctx.getBean(""));
	//	System.out.println(iOrdersDao+"_1");
		Orders orders=new Orders("66",1,1,2,1,"1",5,"1",1,"1","1","1","1","1","1","1",1);
//		List<Orders> Orderss = new ArrayList();
//		Orderss.add(Orders);
//		 Map<String, Object> map = new HashMap<String, Object>();  
		
	//	iOrdersDao.InsertOrders(orders);
//		iOrdersDao.deleteOrders(orders);
//		iOrdersDao.updateOrders(orders);
		
		System.out.println("------------------");
	//	System.out.println(iOrdersDao.selectOrders(orders));
		
	}
	

	
}