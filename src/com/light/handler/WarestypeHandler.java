package com.light.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.alibaba.fastjson.JSONObject;
import com.light.pojo.Brand;
import com.light.pojo.Catagory;
import com.light.pojo.Light;
import com.light.pojo.LightShow;
import com.light.pojo.Statistics;
import com.light.pojo.Style;
import com.light.service.ILightService;
import com.light.service.IWarestypeService;

public class WarestypeHandler extends MultiActionController {

	public WarestypeHandler() {
	}
	
	// 依赖业务逻辑层接口
	private IWarestypeService iWarestypeService;
	private ILightService iLightService;

	public void setiWarestypeService(IWarestypeService iWarestypeService) {
		this.iWarestypeService = iWarestypeService;
	}

	public void setiLightService(ILightService iLightService) {
		this.iLightService = iLightService;
	}


	/**
	 * 商品类型
	 * @param request 请求
	 * @param response 响应
	 * @return ModelAndView 模型和视图
	 * @throws Exception 异常
	 */
	public String waresTypeShowB(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Brand> list = iWarestypeService.selectLWarestypeBrand();
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
		return null;
		
	}
	
	public String waresTypeShowS(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Style> list = iWarestypeService.selectWarestypeStyle();
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
		return null;
	}
	
	public String waresTypeShowC(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Catagory> list = iWarestypeService.selectWarestypeCatagory();
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
		return null;
	}
	
	public String selectLS(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int lightId = Integer.valueOf(request.getParameter("lightId"));
		List<LightShow> list = iLightService.selectLS(lightId);
		String json = JSONObject.toJSONString(list);
		//System.out.println(list+"-----+");
		response.getWriter().print(json);
		return null;
	}
	
//	public void waresTypeShowE(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String keyword = request.getParameter("d");
//		System.out.println(keyword+"----------");
//		// 获取 session 
////		HttpSession session = request.getSession();
//		
//		
//		// 获取  搜索类型的名称
//		String str = "%"+keyword+"%";
//		System.out.println("str="+str);
//		// 判断
//		if(null != str){
//		// 根据 关键字 查询商品信息 
//		List<Light> lightmessage = iWarestypeService.selectWarestypeKeyWord(str);
//		String json = JSONObject.toJSONString(lightmessage);
//		response.getWriter().print(json);
//		// 将商品实体实体 放入 session 域
////		session.setAttribute("lightmessage", lightmessage);
//		// 转发 到 页面
//		//request.getRequestDispatcher("/waresType.jsp").forward(request, response);
//		}
//	}
}
