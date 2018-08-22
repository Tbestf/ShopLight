package com.light.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.light.dao.IMyShopCartDao;
import com.light.pojo.Light;
import com.light.pojo.MyShopCart;
import com.light.pojo.Orders;
import com.light.pojo.Users;

/**
 *	购物车 数据访问层  实现类
 */
public class MyShopCartDaoImpl implements IMyShopCartDao{

	
	public MyShopCartDaoImpl() {
		super();
	}

	//依赖于sqlSessionFactory
	private SqlSessionFactory sqlSessionFactory;
		
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
		
	@Override
	public List<Light> selectMyShopCart(Users user) {
		SqlSession sqlsession=sqlSessionFactory.openSession();
		List<Light> list=sqlsession.selectList("com.light.mapper.MyShopCartMapper.selectmyshopcartLight",user);
		
		return list;
	}

	@Override
	public int updateMyShopCartNum(MyShopCart shopCart) {
		SqlSession sqlsession=sqlSessionFactory.openSession();
		int result=sqlsession.update("com.light.mapper.MyShopCartMapper.updateMyShopCartNum",shopCart);
		return result;
	}

	@Override
	public int deleteMyShopCart(int shopCartId) {
		SqlSession sqlsession=sqlSessionFactory.openSession();
		int result=sqlsession.delete("com.light.mapper.MyShopCartMapper.deleteMyShopCart",shopCartId);
		return result;
	}
	
	@Override
	public int CleanMyShopCart(int userId) {
		SqlSession sqlsession=sqlSessionFactory.openSession();
		int result=sqlsession.delete("com.light.mapper.MyShopCartMapper.CleanMyShopCart",userId);
		return result;
	}
	
	@Override
	public int addcart(MyShopCart shopCart) {
		SqlSession sqlsession=sqlSessionFactory.openSession();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	    String addDate = df.format(new Date());// new Date()为获取当前系统时间
	    shopCart.setAddDate(addDate);
		int result=sqlsession.insert("com.light.mapper.MyShopCartMapper.addcart",shopCart);
		return result;
	}

	@Override
	public int addorder(Orders order) {
		SqlSession sqlsession=sqlSessionFactory.openSession();
		int result=sqlsession.insert("com.light.mapper.MyShopCartMapper.addorder",order);
		return result;
	}

}
