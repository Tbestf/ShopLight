package com.light.pojo;

/**
 * 购物车信息
 */
public class MyShopCart {

	private int shopCartId;			//购物车编号
	private int lightId;			//灯饰编号
	private int userId;				//用户编号
	private String addDate;			//添加日期
	private int number;				//数量
	
	public MyShopCart() {
		super();
	}
	
	public MyShopCart(int shopCartId) {
		super();
		this.shopCartId = shopCartId;
	}
	
	public int getShopCartId() {
		return shopCartId;
	}
	public void setShopCartId(int shopCartId) {
		this.shopCartId = shopCartId;
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
	public String getAddDate() {
		return addDate;
	}
	public void setAddDate(String addDate) {
		this.addDate = addDate;
	}
	
	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "MyShopCart [shopCartId=" + shopCartId + ", lightId=" + lightId
				+ ", userId=" + userId + ", addDate=" + addDate + ", number="
				+ number + "]";
	}

	
}
