package com.light.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.light.dao.IMyShopCartDao;
import com.light.dao.impl.MyShopCartDaoImpl;
import com.light.dao.impl.WarestypeDaoImpl;
import com.light.pojo.Brand;
import com.light.pojo.Catagory;
import com.light.pojo.Light;
import com.light.pojo.MyShopCart;
import com.light.pojo.Orders;
import com.light.pojo.Style;
import com.light.pojo.Users;
import com.light.service.IMyShopCartService;

/**
 * 购物车  业务逻辑  实现类
 */
public class MyShopCartServiceImpl implements IMyShopCartService {

	private IMyShopCartDao iMyShopCartDao;

	public void setiMyShopCartDao(IMyShopCartDao iMyShopCartDao) {
		this.iMyShopCartDao = iMyShopCartDao;
	}

	public MyShopCartServiceImpl() {
		super();
	}

	@Override
	public List<Light>selectMyShopCart(Users user) {
		
		List<Light> list=iMyShopCartDao.selectMyShopCart(user);  
		return list;
	}

	@Override
	public int updateMyShopCartNum(MyShopCart shopCart) {
		
		return iMyShopCartDao.updateMyShopCartNum(shopCart);
	}

	@Override
	public int deleteMyShopCart(int shopCartId) {

		return iMyShopCartDao.deleteMyShopCart(shopCartId);
	}
	
	@Override
	public int CleanMyShopCart(int userId) {
		
		return iMyShopCartDao.CleanMyShopCart(userId);
	}
	
	@Override
	public int addcart(MyShopCart shopCart) {
		
		return iMyShopCartDao.addcart(shopCart);
	}

	@Override
	public int addorder(Orders order) {
		
		return iMyShopCartDao.addorder(order);
	}

}
