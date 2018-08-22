package com.light.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.light.dao.ILightDao;
import com.light.dao.impl.LightDaoImpl;
import com.light.pojo.Brand;
import com.light.pojo.Catagory;
import com.light.pojo.Light;
import com.light.pojo.LightNew;
import com.light.pojo.LightShow;
import com.light.pojo.Statistics;
import com.light.service.ILightService;

/**
 * 灯饰商品信息  业务逻辑  实现类
 */
public class LightServiceImpl implements ILightService {

	//依赖数据访问层接口
	private ILightDao iLightDao;
	
	public void setiLightDao(ILightDao iLightDao) {
		this.iLightDao = iLightDao;
	}
	
	public LightServiceImpl() {
		super();
	}

	/**
	* 增加灯饰商品信息
	* @param light
	* @return 增加一个灯饰商品
	*/
	@Override
	public int insertLight(Light light) {

		return iLightDao.insertLight(light);
	}

	/**
	 * 删除灯饰商品信息
	 * @param light
	 * @return
	 */
	@Override
	public int deleteLight(Light light) {

		return iLightDao.deleteLight(light);
	}

	/**
	 * 修改灯饰商品信息
	 * @param light 
	 * @return
	 */
	@Override
	public int updateLight(Light light) {

		return iLightDao.updateLight(light);
	}

	/**
	 * 查询所有灯饰商品信息
	 * @param light
	 * @return 返回一个List数组
	 */
	@Override
	public List<LightNew> selectAllLight() {
		
		return iLightDao.selectAllLight();
	}

	@Override
	public List<Light> selectLightzuixin() {
		
		return iLightDao.selectLightzuixin();
	}

	@Override
	public List<Light> selectLightchangxiao() {
		
		return iLightDao.selectLightchangxiao();
	}

	@Override
	public List<Light> selectIdLight(Light light) {

		return iLightDao.selectIdLight(light);
	}

	@Override
	public List<Light> selectDLight(Light light) {
		
		return iLightDao.selectDLight(light);
	}

	@Override
	public List<LightShow> selectLS(int lightId) {
		
		return iLightDao.selectLS(lightId);
	}

	@Override
	public int updateclicks(int lightId) {
		
		return iLightDao.updateclicks(lightId);
	}

	@Override
	public int insertLightNew(LightNew lightNew) {
		// TODO Auto-generated method stub
		iLightDao.insertLightNew(lightNew);
		return 0;
	}
	
	@Override
	public int updatenumber(Light light) {
		iLightDao.updatenumber(light);
		return 0;
	}
	
	@Override
	public int updateState(Light light) {
		iLightDao.updateState(light);
		return 0;
	}
	
	@Override
	public List<Catagory> selectWarestypeAllCatagory() {
		
		List<Catagory> list = iLightDao.selectWarestypeAllCatagory();
		return list;
	}
	
	@Override
	public List<Brand> selectWarestypeAll() {
		
		List<Brand> list = iLightDao.selectWarestypeAll();
		return list;
	}
	@Override
	public List<Light> selectlightBrand(String brandId) {
		
		List<Light> list = iLightDao.selectlightBrand(brandId);
		return list;
	}
}
