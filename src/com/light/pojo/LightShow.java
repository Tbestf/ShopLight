package com.light.pojo;

public class LightShow {
	
	private int lightId;    		//灯饰编号 
	private int catagoryId;			//种类编号
	private int brandId;			//品牌编号
	private int styleId;			//风格编号
	private String stuff;			//材质
	private String color;  			//颜色
	private String locate;			//放置位置
	private double price; 			//单价
	private int quantity;			//库存量
	private String description;		//商品描述
	private String images;			//图片地址
	
	private int clicks;				//点击次数
	private	int storeCount;			//收藏次数
	private	int saleCount;			//售出件数
	public int getLightId() {
		return lightId;
	}
	public void setLightId(int lightId) {
		this.lightId = lightId;
	}
	public int getCatagoryId() {
		return catagoryId;
	}
	public void setCatagoryId(int catagoryId) {
		this.catagoryId = catagoryId;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public int getStyleId() {
		return styleId;
	}
	public void setStyleId(int styleId) {
		this.styleId = styleId;
	}
	public String getStuff() {
		return stuff;
	}
	public void setStuff(String stuff) {
		this.stuff = stuff;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getLocate() {
		return locate;
	}
	public void setLocate(String locate) {
		this.locate = locate;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
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
	
	public LightShow() {
		super();
	}
	
	@Override
	public String toString() {
		return "LightShow [lightId=" + lightId + ", catagoryId=" + catagoryId
				+ ", brandId=" + brandId + ", styleId=" + styleId + ", stuff="
				+ stuff + ", color=" + color + ", locate=" + locate
				+ ", price=" + price + ", quantity=" + quantity
				+ ", description=" + description + ", images=" + images
				+ ", clicks=" + clicks + ", storeCount=" + storeCount
				+ ", saleCount=" + saleCount + "]";
	}
	
}
