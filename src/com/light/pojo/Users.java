package com.light.pojo;
/*
 * 用户信息表
 */

public class Users {
	private int userId;						//用户编号
	private String userName;				//用户姓名
	private String address;				    //用户地址
	private String PostalCode;				//邮编
	private String phone;					//用户电话
	private String email;					//邮箱
	private String gender;					//性别
	private int userRoleId;					//用户角色编号
	private int userStateId;				//用户状态编号
	private String loginId;					//登录用户名
	private String loginPwd;				//登录用户密码
	private String lastLoginTime;			//最后登录时间
	public Users() {
		super();
	}
	
	public Users(int userId) {
		super();
		this.userId = userId;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostalCode() {
		return PostalCode;
	}
	public void setPostalCode(String postalCode) {
		PostalCode = postalCode;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}
	public int getUserStateId() {
		return userStateId;
	}
	public void setUserStateId(int userStateId) {
		this.userStateId = userStateId;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	public String getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(String lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	@Override
	public String toString() {
		return "Users [userId=" + userId + ", userName=" + userName
				+ ", address=" + address + ", PostalCode=" + PostalCode
				+ ", phone=" + phone + ", email=" + email + ", gender="
				+ gender + ", userRoleId=" + userRoleId + ", userStateId="
				+ userStateId + ", loginId=" + loginId + ", loginPwd="
				+ loginPwd + ", lastLoginTime=" + lastLoginTime + "]";
	}

}

