package com.light.pojo;
/*
 * 用户状态信息表
 */

public class Userstates {
	private int id;					 	//用户状态编号
	private String name;				//状态名称
	public Userstates() {
		super();
	}
	public int getid() {
		return id;
	}
	public void setiD(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Userstates [id=" + id + ", name=" + name + "]";
	}

}
