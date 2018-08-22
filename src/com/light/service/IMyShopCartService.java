package com.light.service;

import java.util.List;

import com.light.pojo.Light;
import com.light.pojo.MyShopCart;
import com.light.pojo.Orders;
import com.light.pojo.Users;

/**
 * 购物车 业务逻辑层 接口
 */
public interface IMyShopCartService {

	/**
	 * 根据用户编号查询对应的购物车信息
	 * @param user
	 * @return
	 */
	List<Light>selectMyShopCart(Users user);
	
	
	/**
	 * 对购物车的单个商品通过商品的编号对数量进行修改
	 * @param 
	 * @return
	 */
	int updateMyShopCartNum(MyShopCart shopCart);
	
	/**
	 * 通过购物车商品的编号对商品进行删除操作
	 * @param shopCartId
	 * @return
	 */
	int deleteMyShopCart(int shopCartId);
	
	/**
	 * 清空购物车
	 * @param shopCart
	 * @return
	 */
	int CleanMyShopCart(int userId);
	
	/**
	 * 加入购物车
	 * @return
	 */
	int addcart(MyShopCart shopCart);
	
	/**
	 * 加入订单
	 * @param
	 * @return
	 */
	int addorder(Orders order);
}
