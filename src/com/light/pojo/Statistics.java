package com.light.pojo;

/**
 * 灯饰信息统计
 */
public class Statistics {

	private int	lightId;			//灯饰编号
	private int clicks;				//点击次数
	private	int storeCount;			//收藏次数
	private	int saleCount;			//售出件数
	
	public Statistics() {
		super();
	}

	public int getLightId() {
		return lightId;
	}
	public void setLightId(int lightId) {
		this.lightId = lightId;
	}
	public int getClicks() {
		return clicks;
	}
	public void setClicks(int clicks) {
		this.clicks = clicks;
	}
	public int getStoreCount() {
		return storeCount;
	}
	public void setStoreCount(int storeCount) {
		this.storeCount = storeCount;
	}
	public int getSaleCount() {
		return saleCount;
	}
	public void setSaleCount(int saleCount) {
		this.saleCount = saleCount;
	}

	@Override
	public String toString() {
		return "Statistics [lightId=" + lightId + ", clicks=" + clicks
				+ ", storeCount=" + storeCount + ", saleCount=" + saleCount
				+ "]";
	}
	
}
