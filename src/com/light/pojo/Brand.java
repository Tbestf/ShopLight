package com.light.pojo;

/**
 * 灯饰品牌信息
 */
public class Brand {

	private int brandId;			//品牌编号
	private String brandName;		//品牌名称
	
	public Brand() {
		super();
	}
	
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	@Override
	public String toString() {
		return "Brand [brandId=" + brandId + ", brandName=" + brandName + "]";
	}
	
}
