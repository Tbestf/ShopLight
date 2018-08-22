package com.light.pojo;

public class OrderDisplay {

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

	private String orderId;				//订单编号
	private int userId;					//用户编号
	private int buyQuantity;			//购买数量
	private double totalPrice;			//总价
	private String orderDate;			//下订单日期
	private int orderStateId;			//订单状态编号
	private String orderState;          //订单状态
	private int showOrNot;				//是否显示
	private String receiveName;			//收件人姓名
	private String receivePhone;		//收件人电话
	private String address;				//地址
	private String email;				//邮箱
	private String postalCode;			//邮编
	private String postType;			//快递类型	
	private String paymentType;			//支付类型
	private int postFee;				//快递费用
	
	
	public OrderDisplay() {
		super();
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
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getBuyQuantity() {
		return buyQuantity;
	}
	public void setBuyQuantity(int buyQuantity) {
		this.buyQuantity = buyQuantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderStateId() {
		return orderStateId;
	}
	public void setOrderStateId(int orderStateId) {
		this.orderStateId = orderStateId;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	public int getShowOrNot() {
		return showOrNot;
	}
	public void setShowOrNot(int showOrNot) {
		this.showOrNot = showOrNot;
	}
	public String getReceiveName() {
		return receiveName;
	}
	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}
	public String getReceivePhone() {
		return receivePhone;
	}
	public void setReceivePhone(String receivePhone) {
		this.receivePhone = receivePhone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public String getPostType() {
		return postType;
	}
	public void setPostType(String postType) {
		this.postType = postType;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public int getPostFee() {
		return postFee;
	}
	public void setPostFee(int postFee) {
		this.postFee = postFee;
	}
	@Override
	public String toString() {
		return "OrderDisplay [lightId=" + lightId + ", catagoryId=" + catagoryId + ", brandId=" + brandId + ", styleId="
				+ styleId + ", stuff=" + stuff + ", color=" + color + ", locate=" + locate + ", price=" + price
				+ ", quantity=" + quantity + ", description=" + description + ", images=" + images + ", orderId="
				+ orderId + ", userId=" + userId + ", buyQuantity=" + buyQuantity + ", totalPrice=" + totalPrice
				+ ", orderDate=" + orderDate + ", orderStateId=" + orderStateId + ", orderState=" + orderState
				+ ", showOrNot=" + showOrNot + ", receiveName=" + receiveName + ", receivePhone=" + receivePhone
				+ ", address=" + address + ", email=" + email + ", postalCode=" + postalCode + ", postType=" + postType
				+ ", paymentType=" + paymentType + ", postFee=" + postFee + "]";
	}
	
	
}
