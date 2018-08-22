package com.light.pojo;

/**
 * 订单信息
 */
public class Orders {
	private String orderId;				//订单编号
	private int userId;					//用户编号
	private int lightId;				//灯饰编号
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
	
	public Orders() {
		super();
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
	public int getLightId() {
		return lightId;
	}
	public void setLightId(int lightId) {
		this.lightId = lightId;
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

	public Orders(String orderId, int userId, int lightId, int buyQuantity, double totalPrice, String orderDate,
			int orderStateId, String orderState, int showOrNot, String receiveName, String receivePhone, String address,
			String email, String postalCode, String postType, String paymentType, int postFee) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.lightId = lightId;
		this.buyQuantity = buyQuantity;
		this.totalPrice = totalPrice;
		this.orderDate = orderDate;
		this.orderStateId = orderStateId;
		this.orderState = orderState;
		this.showOrNot = showOrNot;
		this.receiveName = receiveName;
		this.receivePhone = receivePhone;
		this.address = address;
		this.email = email;
		this.postalCode = postalCode;
		this.postType = postType;
		this.paymentType = paymentType;
		this.postFee = postFee;
	}

	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", userId=" + userId + ", lightId=" + lightId + ", buyQuantity="
				+ buyQuantity + ", totalPrice=" + totalPrice + ", orderDate=" + orderDate + ", orderStateId="
				+ orderStateId + ", orderState=" + orderState + ", showOrNot=" + showOrNot + ", receiveName="
				+ receiveName + ", receivePhone=" + receivePhone + ", address=" + address + ", email=" + email
				+ ", postalCode=" + postalCode + ", postType=" + postType + ", paymentType=" + paymentType
				+ ", postFee=" + postFee + "]";
	}

	
	
}
