package com.light.service;

import java.util.List;

import com.light.dao.IOrdersDao;
import com.light.pojo.OrderDisplay;
import com.light.pojo.Orders;
import com.light.pojo.Users;

public interface IOrdersService {

	
	/**
	 * 增加订单信息
	 * @param Orders
	 * @return 增加一个灯饰商品
	 */
	int insertOrders(List<Orders> orders);
	
	/**
	 * 删除订单信息
	 * @param Orders
	 * @return 
	 */
	int deleteOrders(Orders orders);

	int userDeleteOrders(String orderId);
	/**
	 * 修改订单信息
	 * @param Orders 
	 * @return 
	 */
	int updateOrders(Orders orders);
	
	int userUpdateOrders(String orderId, String orderStateId);
	
	/**
	 * 查询订单信息
	 * @param Orders
	 * @return 返回一个List数组
	 */
	List<Orders> selectOrders(Orders Orders);

	List<Orders> totalselectOrders(Orders orders);

	List<OrderDisplay> DisplayselectOrders(String userId);

	List<OrderDisplay> DetailordersDisplay(Orders orders);



	List<OrderDisplay> UserIdOrdersDisplay(Orders orders);


	/**
	 * 查找刚加入的订单
	 * @param orders
	 * @return
	 */
	List<OrderDisplay> selectmyorders(Orders orders);
	
	/**
	 * 统计订单总金额和总数量
	 * @param orders
	 * @return
	 */
	List<OrderDisplay> AllPN(Orders orders);
	
	/**
	 * 修改订单收信人信息
	 * @param 
	 * @return
	 */
	int updateOrder(Users users);
	
	/**
	 * 修改订单状态1
	 * @param orders
	 * @return
	 */
	int updateOS(Orders orders);
}
