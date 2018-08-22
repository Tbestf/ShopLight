package com.light.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.light.dao.ILightDao;
import com.light.pojo.Brand;
import com.light.pojo.Catagory;
import com.light.pojo.Light;
import com.light.pojo.LightNew;
import com.light.pojo.LightShow;
import com.light.pojo.Statistics;
import com.light.pojo.Style;


/**
 * 灯饰商品信息  数据访问层  实现类
 */
public class LightDaoImpl implements ILightDao {

	//依赖于sqlSessionFactory
	private SqlSessionFactory sqlSessionFactory;
	
	/**
	 * 配置文件通过set方法注入SqlSessionFactory
	 * @param sqlsessionfactory
	 */
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public LightDaoImpl() {
		super();
	}

	/**
	* 增加灯饰商品信息
	* @param light
	* @return 增加一个灯饰商品
	*/
	@Override
	public int insertLight(Light light) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.insert("com.light.mapper.LightMapper.insertLight", light);
		return result;
	}

	/**
	 * 删除灯饰商品信息
	 * @param light
	 * @return
	 */
	@Override
	public int deleteLight(Light light) {
		
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.delete("com.light.mapper.LightMapper.deleteLight", light);
		return result;

	}

	/**
	 * 修改灯饰商品信息
	 * @param light 
	 * @return 
	 */
	@Override
	public int updateLight(Light light) {
		
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.update("com.light.mapper.LightMapper.updateLight",light);
		return result;
		
	}

	/**
	 * 查询所有灯饰商品信息
	 * @return 返回一个List数组
	 */
	@Override
	public List<LightNew> selectAllLight() {
		SqlSession sqlsession=sqlSessionFactory.openSession();
		List<LightNew> list1 = sqlsession.selectList("com.light.mapper.LightMapper.selectAllLight");
		return list1;
	}

	@Override
	public List<Light> selectLightzuixin() {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Light> list = sqlsession.selectList("com.light.mapper.LightMapper.selectLightzuixin");
		return list;
	}

	@Override
	public List<Light> selectLightchangxiao() {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Light> list = sqlsession.selectList("com.light.mapper.LightMapper.selectLightchangxiao");
		return list;
	}

	@Override
	public List<Light> selectIdLight(Light light) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Light> list = sqlsession.selectList("com.light.mapper.LightMapper.selectIdLight",light);
		return list;
	}

	@Override
	public List<Light> selectDLight(Light light) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Light> list = sqlsession.selectList("com.light.mapper.LightMapper.selectDLight",light);
		return list;
	}

	@Override
	public List<LightShow> selectLS(int lightId) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<LightShow> list = sqlsession.selectList("com.light.mapper.LightMapper.selectLS",lightId);
		return list;
	}

	@Override
	public int updateclicks(int lightId) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.update("com.light.mapper.LightMapper.updateclicks",lightId);
		return result;
	}
	
	@Override
	public int insertLightNew(LightNew lightNew) {
		Brand brand=new Brand();
	    brand.setBrandName(lightNew.getBrandName());
	    
	    Style style=new Style();
	    style.setStyleName(lightNew.getStyleName());
	    
	    Catagory catagory=new Catagory();
	    catagory.setCatagoryName(lightNew.getCatagoryName());
		
	    SqlSession sqlsession = sqlSessionFactory.openSession();
		
	   List<Brand> brand1 =  sqlsession.selectList("com.light.mapper.LightMapper.selectWarestypeBrand",brand);
	   List<Style>  style1 =  sqlsession.selectList("com.light.mapper.LightMapper.selectWarestypeStyle",style);
	   List<Catagory> catagory1 =  sqlsession.selectList("com.light.mapper.LightMapper.selectWarestypeCatagory",catagory);
	   
	   System.out.println(brand1);
	   System.out.println(style1);
	   System.out.println(catagory1);
	   
	    
		if(brand1.size()==0)
		{    
			System.out.println("brand1-------------------");
			 brand.setBrandName(lightNew.getBrandName()); 
		     brand.setBrandId(Integer.valueOf((int) new Date().getTime()));
			 sqlsession. insert("com.light.mapper.LightMapper.insertbrand",brand);
			 brand1 =sqlsession.selectList("com.light.mapper.LightMapper.selectWarestypeBrand",brand);
			 
		}
		
		if(style1.size()==0)
		{
			System.out.println("style1-------------------");
			style.setStyleName(lightNew.getStyleName());
			style.setStyleId(Integer.valueOf((int) new Date().getTime()));
			sqlsession. insert("com.light.mapper.LightMapper.insertStyle",style);
			style1 =  sqlsession.selectList("com.light.mapper.LightMapper.selectWarestypeStyle",style);
			
		}
		
		if(catagory1.size()==0)
		{
			System.out.println("catagory1-------------------");
			catagory.setCatagoryId(Integer.valueOf((int) new Date().getTime()));
			catagory.setCatagoryName(lightNew.getCatagoryName());
			sqlsession. insert("com.light.mapper.LightMapper.insertCatagory",catagory);
			catagory1=sqlsession.selectList("com.light.mapper.LightMapper.selectWarestypeCatagory",catagory);
			
			
		}
		
		 System.out.print(brand1.get(0));
		 brand =brand1.get(0);
		 style=style1.get(0);
		 catagory=catagory1.get(0);
		 
		 System.out.println(brand);
		 System.out.println(style);
		 System.out.println(catagory);
	//	lightNew.setLightId(Integer.valueOf((int) new Date().getTime()));
		lightNew.setBrandId(brand.getBrandId());
		lightNew.setStyleId(style.getStyleId());
		lightNew.setCatagoryId(catagory.getCatagoryId());
		System.out.println(lightNew);
		int result = sqlsession.insert("com.light.mapper.LightMapper.insertLight", lightNew);
		return 0;
	}
	
	@Override
	public int updatenumber(Light light) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.update("com.light.mapper.LightMapper.updatenumber",light);
		return result;
	}
	
	@Override
	public int updateState(Light light) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		int result = sqlsession.update("com.light.mapper.LightMapper.updateState",light);
		return result;
	}
	@Override
	public List<Catagory> selectWarestypeAllCatagory() {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Catagory> list = sqlsession.selectList("com.light.mapper.LightMapper.selectWarestypeAllCatagory");
		return list;
	}
	
	@Override
	public List<Brand> selectWarestypeAll() {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Brand> list = sqlsession.selectList("com.light.mapper.LightMapper.selectWarestypeAll");
		return list;
	}
	
	@Override
	public List<Light> selectlightBrand(String brandId) {
		SqlSession sqlsession = sqlSessionFactory.openSession();
		List<Light> list = sqlsession.selectList("com.light.mapper.LightMapper.selectlightBrand",brandId);
		return list;
	}
}
