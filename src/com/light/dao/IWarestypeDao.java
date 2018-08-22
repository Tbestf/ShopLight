package com.light.dao;

import java.util.List;

import com.light.pojo.Brand;
import com.light.pojo.Catagory;
import com.light.pojo.Light;
import com.light.pojo.Style;

/**
 * 灯饰商品 各类型查询的 数据访问层 接口
 */
public interface IWarestypeDao {
	
	/**
	 * 查询灯饰品牌信息
	 * @param brand
	 * @return 
	 */
	List<Brand> selectLWarestypeBrand( );
	
	/**
	 * 查询灯饰风格信息
	 * @param style
	 * @return
	 */
	List<Style> selectWarestypeStyle( );
	
	/**
	 * 查询灯饰种类信息
	 * @param catagory
	 * @return
	 */
	List<Catagory> selectWarestypeCatagory( );
	
	/**
	 * 根据 关键字 查询灯饰商品
	 * @param keyword
	 * @return 
	 */
	List<Light> selectWarestypeKeyWord(String keyword);
}
