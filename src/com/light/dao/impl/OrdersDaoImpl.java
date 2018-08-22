package com.light.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.light.dao.IOrdersDao;
import com.light.pojo.Light;
import com.light.pojo.OrderDisplay;
import com.light.pojo.Orders;
import com.light.pojo.Users;

public class OrdersDaoImpl implements IOrdersDao {
      

	public OrdersDaoImpl() {
		super();
		
	}

		//依赖于sqlSessionFactory
		private SqlSessionFactory sqlSessionFactory;
		
		/**
		 * 配置文件通过set方法注入SqlSessionFactory
		 * @param sqlsessionfactory
		 */
		public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			this.sqlSessionFactory = sqlSessionFactory;
		}
	
	
	@Override
	public List<Orders> totalselectOrders(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Orders> list = new ArrayList();
		list = sqlsession.selectList("com.light.mapper.OrdersMapper.totalselectOrders", orders);
		System.out.println("//////////////");
		return list;
	}
   

	@Override
	public List<Orders> orderIdselectOrders(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Orders> list = new ArrayList();
		list = sqlsession.selectList("com.light.mapper.OrdersMapper.orderIdselectOrders", orders);
		return list;
	}


	@Override
	public List<Orders> userselectOrders(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Orders> list = new ArrayList();
		list = sqlsession.selectList("com.light.mapper.OrdersMapper.userselectOrders", orders);
		return list;
	}


	@Override
	public int updateOrders(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.update("com.light.mapper.OrdersMapper.updateOrders",orders);
		return result;
	}
	@Override
	public int userUpdateOrders(Orders orders) {
		// TODO Auto-generated method stub
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.update("com.light.mapper.OrdersMapper.userUpdateOrders",orders);
		return result;
	}

	@Override
	public int deleteOrders(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.delete("com.light.mapper.OrdersMapper.deleteOrders", orders);
		return result;

	}

	@Override
	public int InsertOrders(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.insert("com.light.mapper.OrdersMapper.insertOrders", orders);
		return result;
	}
	
	@Override
	public List<OrderDisplay> DisplayselectOrders(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		return sqlsession.selectList("com.light.mapper.OrdersMapper.ordersDisplay", orders);
	}
	
	@Override
	public List<OrderDisplay> detailordersDisplay(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		return sqlsession.selectList("com.light.mapper.OrdersMapper.detailordersDisplay", orders);
	}
	
	@Override
	public List<OrderDisplay> userIdOrdersDisplay(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		return sqlsession.selectList("com.light.mapper.OrdersMapper.userIdOrdersDisplay", orders);
	}


	@Override
	public List<OrderDisplay> selectmyorders(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		return sqlsession.selectList("com.light.mapper.OrdersMapper.selectmyorders", orders);
	}


	@Override
	public List<OrderDisplay> AllPN(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		return sqlsession.selectList("com.light.mapper.OrdersMapper.AllPN", orders);
	}


	@Override
	public int updateOrder(Users users) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Users> list = sqlsession.selectList("com.light.mapper.UserMapper.selectusers", users);
		Users user = list.get(0);
		return sqlsession.update("com.light.mapper.OrdersMapper.updateOrder", user);
	}


	@Override
	public int updateOS(Orders orders) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		return sqlsession.update("com.light.mapper.OrdersMapper.updateOS", orders);
	}

	
	public List<Orders> selectOrders(Orders orders){
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Orders> list =new ArrayList();
		list= sqlsession.selectList("com.light.mapper.OrdersMapper.selectOrders", orders);
		System.out.println("list DOA:"+list);
		return list;
	}
	
}
