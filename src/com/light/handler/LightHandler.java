package com.light.handler;

import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import org.springframework.web.util.WebUtils;

import com.alibaba.fastjson.JSONObject;
import com.light.service.ILightService;
import com.light.pojo.Brand;
import com.light.pojo.Catagory;
import com.light.pojo.Light;
import com.light.pojo.LightNew;
import com.light.pojo.Statistics;


public class LightHandler extends MultiActionController {

	private ILightService iLightService;
	
	public void setiLightService(ILightService iLightService) {
		this.iLightService = iLightService;
	}

	public LightHandler() {
		
	}
	
	public ModelAndView selectDLight(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/waresType.jsp");
		return modelAndView;
	}
	
	public ModelAndView selectIdLight(HttpServletRequest request, HttpServletResponse response) throws Exception {
 
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/waresDetail.jsp");
		return modelAndView;
	}
	
	public String selectLightzuixin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Light> list = iLightService.selectLightzuixin();
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
		return null;
	}
	
	public String selectLightchangxiao(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Light> list = iLightService.selectLightchangxiao();
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
		return null;
	}

	public String addclicks(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int lightId = Integer.valueOf(request.getParameter("lightId"));
		iLightService.updateclicks(lightId);
		return null;
	}
	
	public String selectDL(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String keyword = request.getParameter("keyword");
		Light light = new Light();
		light.setDescription(keyword);
		List<Light> list = iLightService.selectDLight(light);
		System.out.println(list);
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
		return null;
	}
	
	public String selectDL2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String keyword = request.getParameter("keyword");
		String s ="";
		for(int i=0;i<keyword.length();i++)
		{	
			if(keyword.charAt(i)!=',')
				s=s+keyword.charAt(i);
		}
		System.out.println(s);
		Light light = new Light();
		light.setDescription(s);
		List<Light> list = iLightService.selectDLight(light);
		System.out.println(list);
		String json = JSONObject.toJSONString(list);
		response.getWriter().print(json);
		return null;
	}
	
	 public ModelAndView uploadAction(HttpServletRequest request, HttpServletResponse response)  throws Exception{  
		 MultipartFile image = null;
	     boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	        if (isMultipart){ 
	          MultipartHttpServletRequest multipartRequest = WebUtils.getNativeRequest(request, MultipartHttpServletRequest.class);
	          image = multipartRequest.getFile("image");
	        }
		 
		 
	//	 System.out.println("---------------------");
		 System.out.println(image);
	        //获取图片原始文件名  
	      String name=image.getOriginalFilename();  
	       //input输入框name属性值:image  
	        //String fieldName=image.getName();  
	        //org.springframework.web.multipart.MultipartFile  
	          
	        //获取输入流，提交图片的数据内容(图片数据，大数据此种方式方便)  
	        //InputStream inputStream=image.getInputStream();  
	      System.out.println(name	);
	        //图片数据(小数据此种方式方便)  
	        byte[] bytes=image.getBytes();  
	        //图片的文件长度  
	        long size=image.getSize();  
	        System.out.println(name	);
	        
	        /////////******************************************************************************
	        String suffix = name.substring(name.lastIndexOf('.'));  
            System.out.println("扩展名：" + suffix);// .jpg  
  
            // 新文件名（唯一）  
            String newFileName = new Date().getTime() + suffix;  
            System.out.println("新文件名：" + newFileName);// image\1478509873038.jpg  
           
            // 5. 调用FileItem的write()方法，写入文件  
//            File file = new File("D:\\JAVA\\LampShop\\WebContent\\images\\goods" + newFileName);  
//            System.out.println(file.getAbsolutePath());  
//            fileItem.write(file);  
	        
            /////////****************************************************************************** 
	        
	        //存放路径  
	        //获得站点根目录在文件系统上的位置
	        //比如你有个webapp叫store放在 C:\tomcat\webapp\store这里，那getRealPath(“/”)返回的就是C:\tomcat\webapp\store
	       // String path=request.getSession().getServletContext().getRealPath("/images/goods");  
	        File dir=new File("D:\\JAVA\\LampShop\\WebContent\\images\\goods");  
	        if(! dir.exists()){  
	            dir.mkdir();  
	        }  
	        File file=new File(dir,newFileName);  
	        FileOutputStream out=new FileOutputStream(file);  
	        out.write(bytes);  
	        out.close();  
	        //file.getCanonicalPath():返回此抽象路径名的规范路径名字符串  
	       //     System.out.println(file.getCanonicalPath());
	      //  request.setAttribute("pathName","上传成功:"+file.getCanonicalPath()+"拍摄于:"); 
	     
	   
	       /////////******************************************************************************  
	       LightNew lightNew=new LightNew();
	       lightNew.setLightState(1);
	       lightNew.setCatagoryName(request.getParameter("catagoryName"));
	       lightNew.setBrandName(request.getParameter("brandName"));
	       lightNew.setStyleName(request.getParameter("styleName"));
	       lightNew.setStuff(request.getParameter("stuff"));
	       lightNew.setColor(request.getParameter("color"));
	       lightNew.setLocate(request.getParameter("locate"));
	       lightNew.setPrice(Double.valueOf(request.getParameter("price"))  );
	       lightNew.setQuantity(Integer.valueOf(request.getParameter("quantity")));
	       lightNew.setDescription(request.getParameter("description"));
	       lightNew.setImages("images/goods/" + newFileName);
	       System.out.println(lightNew);
	       iLightService.insertLightNew(lightNew);
	       
	     	ModelAndView modelAndView = new ModelAndView();
	    	modelAndView.setViewName("/product-list.jsp");
	    	return modelAndView;

	    }  
	 
	 public String selectAllLight(HttpServletRequest request, HttpServletResponse response) throws Exception {
			List<LightNew> list = iLightService.selectAllLight();
			System.out.println("LightNew:"+list);
			String json = JSONObject.toJSONString(list);
			response.getWriter().print(json);
			return null;
	}
	 
	 public String updatenumber(HttpServletRequest request, HttpServletResponse response,@ModelAttribute Light light) throws Exception {
		     
		 iLightService.updatenumber(light);
		return null;
	 } 
	 public String updateState(HttpServletRequest request, HttpServletResponse response,@ModelAttribute Light light) throws Exception {
		 iLightService.updateState(light);
		return null;
    } 
	 
	 public String deleteLight(HttpServletRequest request, HttpServletResponse response,@ModelAttribute Light light) throws Exception {
		System.out.println("-------------------------------"+light);
		 
		 iLightService.deleteLight(light);
		return null;
    } 
	 
	 public String selectWarestypeAllCatagory(HttpServletRequest request, HttpServletResponse response) throws Exception {
			List<Catagory> list = iLightService.selectWarestypeAllCatagory();
			System.out.println(list);
			String json = JSONObject.toJSONString(list);
			response.getWriter().print(json);
			return null;
	}
	 public String selectWarestypeAllBrand(HttpServletRequest request, HttpServletResponse response) throws Exception {
			List<Brand> list = iLightService.selectWarestypeAll();
			System.out.println(list);
			System.out.println(list);
			String json = JSONObject.toJSONString(list);
			response.getWriter().print(json);
			return null;
	}
	 
	 public String selectlightBrand(HttpServletRequest request, HttpServletResponse response) throws Exception {
		    String brandId =request.getParameter("brandId");
		    List<Light> list = iLightService.selectlightBrand(brandId);
			System.out.println(list);
			String json = JSONObject.toJSONString(list);
			response.getWriter().print(json);
			return null;
	}
}
