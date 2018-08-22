package com.light.pojo;

/**
 * 灯饰种类信息
 */
public class Catagory {

	private int catagoryId;				//种类编号
	private String catagoryName;		//种类名称
	
	public Catagory() {
		super();
	}

	public int getCatagoryId() {
		return catagoryId;
	}
	public void setCatagoryId(int catagoryId) {
		this.catagoryId = catagoryId;
	}
	public String getCatagoryName() {
		return catagoryName;
	}
	public void setCatagoryName(String catagoryName) {
		this.catagoryName = catagoryName;
	}

	@Override
	public String toString() {
		return "Catagory [catagoryId=" + catagoryId + ", catagoryName="
				+ catagoryName + "]";
	}
	
}
