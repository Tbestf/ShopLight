package com.light.pojo;

/**
 * 灯饰风格
 */
public class Style {

	private int styleId;			//风格编号
	private String styleName;		//风格名称
	
	public Style() {
		super();
	}

	public int getStyleId() {
		return styleId;
	}
	public void setStyleId(int styleId) {
		this.styleId = styleId;
	}
	public String getStyleName() {
		return styleName;
	}
	public void setStyleName(String styleName) {
		this.styleName = styleName;
	}

	@Override
	public String toString() {
		return "Style [styleId=" + styleId + ", styleName=" + styleName + "]";
	}
	
}
