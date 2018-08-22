package com.light.pojo;

/**
 * 订单状态信息
 */
public class OrderStates {

	private int orderStateId;			//订单状态编号
	private String orderStateName;		//订单状态名
	
	public OrderStates() {
		super();
	}

	public int getOrderStateId() {
		return orderStateId;
	}
	public void setOrderStateId(int orderStateId) {
		this.orderStateId = orderStateId;
	}
	public String getOrderStateName() {
		return orderStateName;
	}
	public void setOrderStateName(String orderStateName) {
		this.orderStateName = orderStateName;
	}

	@Override
	public String toString() {
		return "OrderStates [orderStateId=" + orderStateId
				+ ", orderStateName=" + orderStateName + "]";
	}
	
}
