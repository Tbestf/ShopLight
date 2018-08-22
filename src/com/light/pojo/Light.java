package com.light.pojo;

/**
 * 灯饰信息
 */
public class Light {

	private int lightId;    		//灯饰编号 
	private int lightState;          //灯饰状态
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
	private String number; 			
	private int shopCartId;			
	public Light() {
		super();
	}
	
	public Light(int lightId) {
		super();
		this.lightId = lightId;
	}

	

	public int getLightState() {
		return lightState;
	}

	public void setLightState(int lightState) {
		this.lightState = lightState;
	}

	public Light(int lightId, int catagoryId, int brandId, int styleId,
			String stuff, String color, double price, int quantity,
			String description, String images) {
		super();
		this.lightId = lightId;
		this.catagoryId = catagoryId;
		this.brandId = brandId;
		this.styleId = styleId;
		this.stuff = stuff;
		this.color = color;
		this.price = price;
		this.quantity = quantity;
		this.description = description;
		this.images = images;
	}

	public Light(int lightId, int catagoryId, int brandId, int styleId,
			String stuff, String color, String locate, double price,
			int quantity, String description, String images) {
		super();
		this.lightId = lightId;
		this.catagoryId = catagoryId;
		this.brandId = brandId;
		this.styleId = styleId;
		this.stuff = stuff;
		this.color = color;
		this.locate = locate;
		this.price = price;
		this.quantity = quantity;
		this.description = description;
		this.images = images;
	}


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
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public int getShopCartId() {
		return shopCartId;
	}
	public void setShopCartId(int shopCartId) {
		this.shopCartId = shopCartId;
	}

	@Override
	public String toString() {
		return "Light [lightId=" + lightId + ", catagoryId=" + catagoryId
				+ ", brandId=" + brandId + ", styleId=" + styleId + ", stuff="
				+ stuff + ", color=" + color + ", locate=" + locate
				+ ", price=" + price + ", quantity=" + quantity
				+ ", description=" + description + ", images=" + images
				+ ", number=" + number + ", shopCartId=" + shopCartId + "]";
	}
	
	
}
