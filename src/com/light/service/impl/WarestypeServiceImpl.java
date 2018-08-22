package com.light.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.light.dao.IWarestypeDao;
import com.light.dao.impl.LightDaoImpl;
import com.light.dao.impl.WarestypeDaoImpl;
import com.light.pojo.Brand;
import com.light.pojo.Catagory;
import com.light.pojo.Light;
import com.light.pojo.Style;
import com.light.service.IWarestypeService;

/**
 * 灯饰商品 各类型查询的 业务逻辑  实现类
 */

public class WarestypeServiceImpl implements IWarestypeService {

	//依赖数据访问层接口
	private IWarestypeDao iWarestypeDao;
	
	public void setiWarestypeDao(IWarestypeDao iWarestypeDao) {
		this.iWarestypeDao = iWarestypeDao;
	}
	
	public WarestypeServiceImpl() {
		super();
	}
	
	/**
	 * 查询灯饰品牌信息
	 * @param brand
	 * @return 
	 */
	@Override
	public List<Brand> selectLWarestypeBrand( ) {
		
		return iWarestypeDao.selectLWarestypeBrand();
	}

	/**
	 * 查询灯饰风格信息
	 * @param style
	 * @return 
	 */
	@Override
	public List<Style> selectWarestypeStyle( ) {
		
		return iWarestypeDao.selectWarestypeStyle();
	}

	/**
	 * 查询灯饰种类信息
	 * @param catagory
	 * @return 
	 */
	@Override
	public List<Catagory> selectWarestypeCatagory( ) {
		
		return iWarestypeDao.selectWarestypeCatagory();
	}
	
	/**
	 * 根据 关键字 查询灯饰商品
	 * @param keyword
	 * @return 
	 */
	@Override
	public List<Light> selectWarestypeKeyWord(String keyword) {
		
		return iWarestypeDao.selectWarestypeKeyWord(keyword);
	}

	@Test
	public void insertLight1() {
		System.out.println("11111111111111111111111");
		ApplicationContext ctx=null;
		
		ctx=new ClassPathXmlApplicationContext("applicationcontext_main.xml");
		iWarestypeDao=(WarestypeDaoImpl) ctx.getBean("warestypesDaoImpl");
		
		System.out.println(iWarestypeDao+"_2");
		String keyword = "%中式%";
		Brand brand = new Brand();
		Style style = new Style();
		Catagory catagory = new Catagory();
		iWarestypeDao.selectLWarestypeBrand( );
		iWarestypeDao.selectWarestypeStyle( );
		iWarestypeDao.selectWarestypeCatagory( );
		iWarestypeDao.selectWarestypeKeyWord(keyword);
	}

}
