package com.light.dao;

import java.util.List;

import com.light.pojo.Brand;
import com.light.pojo.Catagory;
import com.light.pojo.Light;
import com.light.pojo.LightNew;
import com.light.pojo.LightShow;
import com.light.pojo.Statistics;

/**
 * 灯饰商品信息 数据访问层 接口
 */
public interface ILightDao {
	
	/**
	 * 增加灯饰商品信息
	 * @param light
	 * @return 增加一个灯饰商品
	 */
	int insertLight(Light light);
	
	/**
	 * 删除灯饰商品信息
	 * @param light
	 * @return 
	 */
	int deleteLight(Light light);
	
	/**
	 * 修改灯饰商品信息
	 * @param light 
	 * @return 
	 */
	int updateLight(Light light);
	
	/**
	 * 查询所有灯饰商品信息
	 * @param light
	 * @return 返回一个List数组
	 */
	List<LightNew> selectAllLight();
	
	/**
	 * 灯饰商品最新6条信息
	 * @return
	 */
	List<Light> selectLightzuixin( );
	
	/**
	 * 灯饰商品销售量最多的6条信息
	 * @return
	 */
	List<Light> selectLightchangxiao( );
	
	/**
	 * 查询灯饰Id商品信息
	 * @param light
	 * @return
	 */
	List<Light> selectIdLight(Light light);
	
	/**
	 * 查询描述灯饰商品信息
	 * @param light
	 * @return
	 */
	List<Light> selectDLight(Light light);
	
	/**
	 * 查询销售量
	 * @param lightId
	 * @return
	 */
	List<LightShow> selectLS(int lightId);
    
	/**
	 * 修改点击数
	 * @param st
	 * @return
	 */
	int updateclicks(int lightId);
	
	
	int insertLightNew(LightNew lightNew);
	
	int updatenumber(Light light);

	int updateState(Light light);

	List<Catagory> selectWarestypeAllCatagory();

	List<Brand> selectWarestypeAll();

	List<Light> selectlightBrand(String brandId);
}
