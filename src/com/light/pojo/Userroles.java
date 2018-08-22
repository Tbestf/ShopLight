package com.light.pojo;
/*
 * 角色信息表
 */
public class Userroles {
	private int id;						//角色编号
	private String name;				//角色名称
	
	public Userroles() {
		super();
	}

	public int getid() {
		return id;
	}

	public void setid(int id) {
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
		return "Userroles [id=" + id + ", name=" + name + "]";
	}
	
	
}
