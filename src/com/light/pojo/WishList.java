package com.light.pojo;

/**
 * 收藏夹信息
 */
public class WishList {

	private int wishListId;				//收藏编号
	private int lightId;				//灯饰编号
	private int userId;					//用户编号
	private String  storeDate;			//收藏日期
	
	public WishList() {
		super();
	}

	public int getWishListId() {
		return wishListId;
	}
	public void setWishListId(int wishListId) {
		this.wishListId = wishListId;
	}
	public int getLightId() {
		return lightId;
	}
	public void setLightId(int lightId) {
		this.lightId = lightId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getStoreDate() {
		return storeDate;
	}
	public void setStoreDate(String storeDate) {
		this.storeDate = storeDate;
	}

	@Override
	public String toString() {
		return "WishList [wishListId=" + wishListId + ", lightId=" + lightId
				+ ", userId=" + userId + ", storeDate=" + storeDate + "]";
	}
	
}
