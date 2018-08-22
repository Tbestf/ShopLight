package com.light.dao;

import java.util.List;

import com.light.pojo.OrderDisplay;
import com.light.pojo.Orders;
import com.light.pojo.Users;

public interface IOrdersDao {
	/**
	 * 根据编号查询对应的订单信息
	 * @param user
	 * @return
	 */
	List<Orders> orderIdselectOrders(Orders orders);
	
    List<Orders> totalselectOrders(Orders orders);
    
    List<Orders> userselectOrders(Orders orders);
//	/**
//	 * 根据管理员编号查询对应的订单信息
//	 * @param user
//	 * @return
//	 */
//	List<Orders> adminSelectOrders(Orders orders);
//	
	
	/**
	 * 对订单的单个商品通过商品的订单号对状态进行修改
	 * @param shopCartId
	 * @return
	 */
	int updateOrders(Orders orders);
	
	int userUpdateOrders(Orders orders);
//	/**
//	 * 管理员对订单的单个商品通过商品的订单号对状态进行修改
//	 * @param shopCartId
//	 * @return
//	 */
//	int adminUpdateOrders(Orders orders);
	
	/**
	 * 对商品进行删除操作
	 * @param 
	 * @return
	 */
	int deleteOrders(Orders orders);
	
//	/**
//	 * 管理员对商品进行删除操作
//	 * @param 
//	 * @return
//	 */
//	int admindeleteOrders(Orders orders);
	
	/**
	 * 添加订单
	 * @param 
	 * @return
	 */
	int InsertOrders(Orders orders);

	List<OrderDisplay> DisplayselectOrders(Orders orders);

	List<OrderDisplay> detailordersDisplay(Orders orders);

	List<OrderDisplay> userIdOrdersDisplay(Orders orders);
	
//	/**
//	 * 管理员添加订单
//	 * @param 
//	 * @return
//	 */
//	int adminInseretOrders(Orders  orders);
	
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
	
	
	List<Orders> selectOrders(Orders orders);
}
