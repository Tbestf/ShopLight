package com.light.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.light.dao.IWarestypeDao;
import com.light.pojo.Brand;
import com.light.pojo.Catagory;
import com.light.pojo.Light;
import com.light.pojo.Style;

/**
 * 灯饰商品 各类型查询的  数据访问层  实现类
 */
public class WarestypeDaoImpl implements IWarestypeDao {

	//依赖于sqlSessionFactory
	private SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	public WarestypeDaoImpl() {
			super();
	}

	/**
	 * 查询灯饰品牌信息
	 * @param brand
	 * @return 
	 */
	@Override
	public List<Brand> selectLWarestypeBrand( ) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Brand> listb = sqlsession.selectList("com.light.mapper.WarestypeMapper.selectWarestypeBrand");
		System.out.println(listb);
		return listb;
	}

	/**
	 * 查询灯饰风格信息
	 * @param style
	 * @return
	 */
	@Override
	public List<Style> selectWarestypeStyle( ) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Style> lists = sqlsession.selectList("com.light.mapper.WarestypeMapper.selectWarestypeStyle");
		System.out.println(lists);
		return lists;
	}

	/**
	 * 查询灯饰种类信息
	 * @param catagory
	 * @return
	 */
	@Override
	public List<Catagory> selectWarestypeCatagory( ) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Catagory> listc = sqlsession.selectList("com.light.mapper.WarestypeMapper.selectWarestypeCatagory");
		System.out.println(listc);
		return listc;
	}
	
	/**
	 * 根据 关键字 查询灯饰商品
	 * @param keyword
	 * @return 
	 */
	@Override
	public List<Light> selectWarestypeKeyWord(String keyword) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Light> list = new ArrayList();
		list = sqlsession.selectList("com.light.mapper.WarestypeMapper.selectWarestype",keyword);
		System.out.println(list);
		return list;
	}

}
