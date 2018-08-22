<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ path + "/";
	String uid = (String) session.getAttribute("uid");
	if(uid==null){
		uid = "*";
	}
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<link rel="stylesheet" href="css/index_zmj.css">
<script type="text/javascript" src="js/jquery-2.2.1.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>
<script type="text/javascript" src="js/index_zmj.js"></script>
<title>波波商城</title>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<!--侧边栏  -->
	<div id="right-sidebar">
		<div class="right-show-bar">
			<div class="bar-icon" id="bar-person" value="1">
				<a href="personal.jsp?uid=<%=uid%>" class="link"> 
					<span class="glyphicon glyphicon-user bar-icon-size" aria-hidden="true"></span>
				</a>
			</div>
			<div class="bar-icon" id="bar-cart" value="2">
				<a href="myshopcart.action?method=MyShopCart&uid=<%=uid%>" class="link"> 
					<span class="glyphicon glyphicon-shopping-cart bar-icon-size"></span>
				</a>
			</div>
			<div class="bar-icon" id="bar-communication" value="5">
				<a href="" class="link">
					<span class="glyphicon glyphicon-phone-alt bar-icon-size"></span>
				</a>
			</div>
			<div class="bar-icon-except">
				<a href="#top-bar" class="link"> 
					<span class="glyphicon glyphicon-eject bar-icon-size"></span>
				</a>
			</div>
		</div>

		<!--侧边栏内部  -->
		<div class="right-show-content-1">
			<div class="show-content-title">
				<div class="show-content-title-text">个人中心</div>
				<div class="show-content-title-close">
					<a href="personal.jsp?uid=<%=uid%>" class="link"><span
						class="glyphicon glyphicon-remove"></span></a>
				</div>
			</div>
		</div>
		<div class="right-show-content-2">
			<div class="show-content-title">
				<div class="show-content-title-text">购物车</div>
				<div class="show-content-title-close">
					<a href="myshopcart.action?method=MyShopCart&uid=<%=uid%>" class="link"><span
						class="glyphicon glyphicon-remove"></span></a>
				</div>
			</div>
		</div>
		<div class="right-show-content-5">
			<div class="show-content-title">
				<div class="show-content-title-text">联系客服:17876253445</div>
				<div class="show-content-title-close">
					<a href="" class="link"><span
						class="glyphicon glyphicon-remove"></span></a>
				</div>
			</div>
		</div>
	</div>

	<!--主页轮播器  -->
	<div id="myCarousel" class="carousel slide">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>  
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div  class="item carousel-div active">
				<a href="light.action?method=selectDLight&d=灯&uid=<%=uid%>">
					<img style="margin-left:10px;width: 1920px; height:670px; background-size:cover;"src="images/s/light_4.jpg" alt="First slide">
				</a>
			</div>
			<div  class="item carousel-div ">
				<a href="light.action?method=selectDLight&d=欧普照明&uid=<%=uid%>">
					<img style="margin-left:80px;width: 1920px; height:670px; background-size:cover;" src="images/s/light_7.jpg" alt="Second slide">
				</a>
			</div>
			<div  class="item carousel-div ">
				<a href="light.action?method=selectDLight&d=灯&uid=<%=uid%>">
					<img style="margin-left:80px;width: 1920px; height:1103px; background-size:cover;" src="images/s/light_5.jpg" alt="Third slide">
				</a>
			</div>
		</div>
		
		<!-- 轮播（Carousel）导航 -->
		<a class="carousel-control left" href="#myCarousel" 
	  data-slide="prev">&lsaquo;</a> <a class="carousel-control right" href="#myCarousel" 
	  data-slide="next">&rsaquo;</a> 
	</div>

	<!--新品上市-->
	<div id="new-shoes">
		<div class="container-cust shoes-title-bar">新品上市</div>
		<div class="container-cust">
		  <div class="col-md-4 col-sm-4 col-xs-4 new-shoes-grid">
				<div class="shoes-grid-4">
					<a href="light.action?method=selectDLight&d=熙欧&un=<%=uid%>"> 
						<img style="width:350px;height:500px" src="images/s/02.jpg" alt="">
					</a>
				</div>
			</div>
		 	
			
			<div id="zx2" class="col-md-3 col-sm-3 col-xs-3 new-shoes-grid">
				<script type="text/html" id="zx2List-template">
					{{each zx}}
  						{{if $index >= 2 && $index < 4}}
							<div class="shoes-grid-3">
								<div>
									<a href="light.action?method=selectIdLight&lightid={{$value.lightId}}&uid=<%=uid%>"> <img style="height: 180px;width: 250px;"src="{{$value.images}}" alt=""></a>
								</div>
								<div class="buy-info">
									{{$value.description}}...<br> RMB: {{$value.price}}
								</div>
							</div>
						{{/if}}
  				 	{{/each}}
				</script>
			</div>
			<div id="zx3"class="col-md-3 col-sm-3 col-xs-3 new-shoes-grid">
				<script type="text/html" id="zx3List-template">
					{{each zx}}
  						{{if $index >= 4}}
							<div class="shoes-grid-3">
								<div>
									<a href="light.action?method=selectIdLight&lightid={{$value.lightId}}&uid=<%=uid%>"> <img style="height: 180px;width: 250px;"src="{{$value.images}}" alt=""></a>
								</div>
								<div class="buy-info">
									{{$value.description}}...<br> RMB: {{$value.price}}
								</div>
							</div>
						{{/if}}
  				 	{{/each}}
				</script>
			</div>
			<div class="col-md-2 col-sm-2 col-xs-2 new-shoes-grid">
				<div id="zx" class="shoes-grid-2">
				<script type="text/html" id="zxList-template">
 					{{each zx}}
  						{{if $index < 2}}
							<div class="shoes-grid-2-inner">
								<a href="light.action?method=selectIdLight&lightid={{$value.lightId}}&uid=<%=uid%>"> <img style="height: 180px;width: 180px;"src="{{$value.images}}" alt=""></a>
								<div class="buy-info-2">
									{{$value.description}}...<br> RMB: {{$value.price}}
								</div>
							</div>
						{{/if}}
  				 	{{/each}}
				</script>
				</div>
			</div>
			
		</div>
	</div>


	<div id="best-sell-shoes">
		<div class="container-cust shoes-title-bar">畅销良品</div>
		<div class="container-cust">
			<div class="col-md-4 col-sm-4 col-xs-4 new-shoes-grid">
				<div class="shoes-grid-4">
					<a href="light.action?method=selectDLight&d=欧普照明&un=<%=uid%>">
						<img style="width:350px;height:500px" src="images/s/01.jpg" alt="">
					</a>
				</div>
			</div>
			<div id="cx" class="col-md-3 col-sm-3 col-xs-3 new-shoes-grid">
				<script type="text/html" id="cxList-template">
					{{each cx}}
  						{{if $index < 2}}
							<div class="shoes-grid-3">
								<div>
									<a href="light.action?method=selectIdLight&lightid={{$value.lightId}}&uid=<%=uid%>"> <img style="height: 180px;width: 250px;"src="{{$value.images}}" alt=""></a>
								</div>
								<div class="buy-info">
									{{$value.description}}...<br> RMB: {{$value.price}}
								</div>
							</div>
						{{/if}}
  				 	{{/each}}
				</script>
			</div>
			<div id="cx2" class="col-md-3 col-sm-3 col-xs-3 new-shoes-grid">
				<script type="text/html" id="cx2List-template">
					{{each cx}}
  						{{if $index >= 2 && $index < 4}}
							<div class="shoes-grid-3">
								<div>
									<a href="light.action?method=selectIdLight&lightid={{$value.lightId}}&uid=<%=uid%>"> <img style="height: 180px;width: 250px;"src="{{$value.images}}" alt=""></a>
								</div>
								<div class="buy-info">
									{{$value.description}}...<br> RMB: {{$value.price}}
								</div>
							</div>
						{{/if}}
  				 	{{/each}}
				</script>
			</div>
			<div class="col-md-2 col-sm-2 col-xs-2 new-shoes-grid">
				<div id="cx3" class="shoes-grid-2">
					<script type="text/html" id="cx3List-template">
 					{{each cx}}
  						{{if $index >= 4}}
							<div class="shoes-grid-2-inner">
								<a href="light.action?method=selectIdLight&lightid={{$value.lightId}}&uid=<%=uid%>"> <img style="height: 180px;width: 180px;"src="{{$value.images}}" alt=""></a>
								<div class="buy-info-2">
									{{$value.description}}...<br> RMB: {{$value.price}}
								</div>
							</div>
						{{/if}}
  				 	{{/each}}
					</script>	
				</div>
			</div>
		</div>
	</div>
	<!--畅销良品-->

	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		var loadData = function() {
			$.ajax({
				type : "POST",
				url : "light.action?method=selectLightzuixin",
				success : function(json) {
					var data = eval("(" + json + ")");
					var html = template('zxList-template', {
						zx : data,
					});
					$('#zx').html(html);
					var html = template('zx2List-template', {
						zx : data,
					});
					$('#zx2').html(html);
					var html = template('zx3List-template', {
						zx : data,
					});
					$('#zx3').html(html);
				}
			});
		}
		loadData();
		var loadData2 = function() {
			$.ajax({
				type : "POST",
				url : "light.action?method=selectLightchangxiao",
				success : function(json) {
					var data = eval("(" + json + ")");
					var html = template('cxList-template', {
						cx : data,
					});
					$('#cx').html(html);
					var html = template('cx2List-template', {
						cx : data,
					});
					$('#cx2').html(html);
					var html = template('cx3List-template', {
						cx : data,
					});
					$('#cx3').html(html);
				}
			});
		}
		loadData2();
	</script>

	<!-- <script type="text/javascript" src="js/bootstrap.js"></script>
	 -->
</body>
</html>
