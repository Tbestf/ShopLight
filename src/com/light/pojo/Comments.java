package com.light.pojo;

/**
 * 商品评价信息
 */
public class Comments {

	private int commentId;			//评价编号
	private int lightId;			//灯饰编号
	private	int	userId;				//用户编号
	private String comments;		//评价详情
	private String date;			//评价日期
	
	public Comments() {
		super();
	}

	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
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
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Comments [commentId=" + commentId + ", lightId=" + lightId
				+ ", userId=" + userId + ", comments=" + comments + ", date="
				+ date + "]";
	}
	
}
