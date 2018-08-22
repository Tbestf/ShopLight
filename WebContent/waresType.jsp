<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% String uid = (String) session.getAttribute("uid"); 
	if(uid == null){
		uid = "*";
	}
%>
<html>
<head>
<meta charset="utf-8">
<title>商品类型</title>
<!--外部引入css样式-->
<script type="text/javascript" src="js/jquery-2.2.1.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>
<script type="text/javascript" src="js/zhangke/ywlist.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/zhangke/ywlist.css" rel="stylesheet">
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>

<body  style="background-color: #f4f4f4;">

	<jsp:include page="header.jsp"></jsp:include>

	<!--导航菜单-->

	<!-- header -->
	<div class="x_wrap">
		<div class="list_crumb">
			<ol class="breadcrumb" style="margin-bottom: 0px;">
				<li><a href="#">首页</a></li>
				<li class="active">所有分类</li>
			</ol>
		</div>

		<div class="selector_box" style="">
			<dl class="selector_line" style="width: 1024px;height:35px;;margin-bottom: 0px;">
				<dt>已选择：</dt>
				<dd class="values">
					<ul class="slt">
					</ul>
					<a href="javascript:;" class="clear-slt" style=""><i></i>清除条件</a>
				</dd>
			</dl>
			<dl class="selector_line " style="width: 1024px;margin-bottom: 0px;">
				<dt>灯饰品牌：</dt>
				<dd id="wtb" class="values">
					<ul>
					<script type="text/html" id="wtbList-template">
 						{{each wtb}}
							<li>
								<a class="ckd" href="javascript:;"title="{{$value.brandName}}" ><i></i>{{$value.brandName}}</a>
							</li>
  				 		{{/each}}
					</script>	
					</ul>
				</dd>
			</dl>
			<dl class="selector_line " style="width: 1024px;margin-bottom: 0px;">
				<dt style="">灯饰风格：</dt>
				<dd id="wts" class="values" >
					<ul>
					<script type="text/html" id="wtsList-template">
 						{{each wts}}
							<li>
								<a class="ckd" href="javascript:;"title="{{$value.styleName}}" ><i></i>{{$value.styleName}}</a>
							</li>
  				 		{{/each}}
					</script>	
					</ul>
				</dd>
			</dl>
			<dl class="selector_line" style="width: 1024px;">
				<dt style="">灯饰类型：</dt>
				<dd id="wtc" class="values" >
					<ul>
 					<script type="text/html" id="wtcList-template">
 						{{each wtc}}
							<li>
								<a class="ckd" href="javascript:;"title="{{$value.catagoryName}}" ><i></i>{{$value.catagoryName}}</a>
							</li>
  				 		{{/each}}
					</script>	
					</ul>
				</dd>
			</dl>


		</div>

		<!-- main -->
		<div class="x_wrap" style="width: 1024px; height: 45px;">
			<div class="filter_list" style="width: 1024px; height: 45px;">
			</div>
		<!-- 链接 主体内容 -->
       	<div id="new-shoes">
		<div id="wt" class="container-cust">
			<script type="text/html" id="wtList-template">
 				{{each wt}}
					<div class="col-md-3 col-sm-3 col-xs-3 new-shoes-grid">
						<div class="shoes-grid-3">
							<div>
								<a href="light.action?method=selectIdLight&lightid={{$value.lightId}}&uid=<%=uid%>"> <img style="height: 180px;width: 180px;" src="{{$value.images}}" alt=""></a>
							</div>
							<div class="buy-info">
								{{$value.description}}<br/><br/> RMB: {{$value.price}}
							</div>
						</div>
					</div>
  				{{/each}}
			</script>	
		</div>
	</div>

<!-- 			<div class="list_pro_box" style="width: 1024px;"> -->
			
<!-- 				<iframe id="rightFrame" name="rightFrame" scrolling="no" frameborder="0"  src="waresList.jsp" style="width:100%;height: 100%;"> -->
<!--         		</iframe> -->
        		
<!-- 			</div> -->
		</div>
	</div>

	<!-- 清除浮动 -->
	<div style="clear: both; margin-bottom: 40px;"></div>

	<jsp:include page="footer.jsp"></jsp:include>
	
	<script type="text/javascript">
			
	</script>

</body>
</html>