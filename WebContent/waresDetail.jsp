<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>商品详情</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="css/luoxiaosong/bootstrap.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/luoxiaosong/jquery-2.2.1.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>
<script type="text/javascript" src="js/luoxiaosong/bootstrap.js"></script>
<link href="css/luoxiaosong/shoesDetail.css" rel="stylesheet" type="text/css">

</head>

<body>
	<!-- 头部导航栏开始 -------------------------------------------------------------------->
	<div class="row" id="head">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<!-- 头部导航栏结束 -------------------------------------------------------------------->
	<div class="container" style="width: 960px;">
		<div class="row" id="body_top_daohang">
			<a href="index.jsp">商城首页</a>&nbsp;&nbsp;
		</div>
		<!-- body上部分开始 -------------------------------------------------------------------->
		<div class="row" id="body_top">
			<div class="col-md-6 col-sm-6 col-xs-6" id="body_top_left">
				<div id="big_img">
					<script type="text/html" id="imgList-template">
 					{{each sp}}
						<img alt="" src="{{$value.images}}"
							imgBig="{{$value.images}}" id="img_big">
					{{/each}}
					</script>	
				</div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-6" id="body_top_right">

				<div id="body_top_right_container">
					<table id="ms" class="table table-striped"
						style="width: 100%; height: 100%;">
						<script type="text/html" id="msList-template">
 						{{each sp}}
						<thead>
							<tr>
								<th>{{$value.description}}</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>单价 <font color="red" size="5px">￥{{$value.price}}</font>
								</td>
							</tr>
							<tr>
								<td >累计售出：{{$value.saleCount}}</td>
							</tr>
							<tr>
								<td>颜 色：{{$value.color}}&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp材质：{{$value.stuff}}</td>
							</tr>
							<tr>
								<td class="chima"><font>放置位置：{{$value.locate}}</font></td>
							</tr>
							<tr>
								<td class="shuliang"><font>我 要 买：</font>
									<p id="jianhao" style="cursor: pointer;">-</p> 
									<input type="text" value="1" id="number">
									<p id="jiahao" style="cursor: pointer;">+</p> <font>&nbsp;&nbsp;库存{{$value.quantity}}件</font>
								</td>
							</tr>
							<tr>
								<td>
									<a href="javascript:toadd();">
										<button type="button" class="btn btn-danger btn-sm"
											style="width: 130px; height: 40px;" >加入购物车</button>
									</a>
								</td>
							</tr>	
						</tbody>
						{{/each}}
						</script>	
					</table>
				</div>
			</div>
		</div>
		<!-- body上部分结束 -------------------------------------------------------------------->
		<div class="row" id="top_bottom"></div>
		<!-- body下部分开始 -------------------------------------------------------------------->
		
	<!-- body下部分结束 -------------------------------------------------------------------->
	<!-- footer部分结束 -------------------------------------------------------------------->
	<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!-- footer部分结束 -------------------------------------------------------------------->
	<script>
		var lightId = getQueryString('lightid'); 
		var uid = getQueryString('uid'); 
		//加载商品信息
		var loadData = function(){
			$.ajax({
				type : "POST",
				url : "warestype.action?method=selectLS",
				data :{
					lightId : lightId
				},
				success : function(json) { 
					var data = eval("(" + json + ")");
					console.log(data);
					var html = template('imgList-template', {
						sp : data,
					});
					$('#big_img').html(html);
					var html = template('msList-template', {
						sp : data,
					});
					$('#ms').html(html);

					$(function() {
						// 右侧小图片标签
						var img_small = $(".img_small");
						// 右侧中大图片标签
						var img_cent = $("#img_big");
						img_small.mouseenter(function() {
							// 当鼠标移到div容器上时给容器先将所有容器的边框线初始化
							img_small.css("border", "#DCDCDC 1px solid");
							// 初始化边框线后给鼠标所在的容器添加红色边框线
							$(this).css("border", "red 1px solid");
							// 得到鼠标所在的图片标签
							var img = $(this).children("img");
							// 得到图片标签中的imgcent属性
							var imgCent = img.attr("imgCent");
							// 将imgcent属性赋给大图片的src属性
							img_cent.attr("src", imgCent);
							// 得到图片标签中的imgbig属性
							var imgBig = img.attr("imgBig");
							// 将imgBig属性赋给大图片的imgBig属性
							img_cent.attr("imgBig", imgBig);
						});

						// 放大镜在div里移动显示方法
						// 右侧大图片容器
						var con = $("#big_img");
						// 右侧大图片标签
						var img = $('#img_big');
						// 容器宽度
						var wid = con.width();
						// 容器高度
						var hei = con.height();
						// 容器距离原点的X轴距离
						var left = con.offset().left;
						// 容器距离远点的Y轴距离
						var top = con.offset().top;
						// 声明一个中图的src属性
						var imgcentsrc = null;
						con.mousemove(function(e) {
							var imgBig = img.attr("imgBig");
							imgcentsrc = img.attr("src");
							con.css("overflow", "hidden");
							img.attr("src", imgBig);
							var x = e.pageX - left;
							var y = e.pageY - top;
							var marX = -(x / (wid * 2)) * 820 + 'px';
							var marY = -(y / (wid * 2)) * 820 + 'px';
							img.width(800);
							img.height(800);
							img.css("margin-left", marX);
							img.css("margin-top", marY);
						});
						// 当鼠标离开放大镜div时执行方法
						con.mouseleave(function() {
							img.width('100%');
							img.height('100%');
							img.css("margin-left", 0);
							img.css("margin-top", 0);
							img.attr("src", imgcentsrc);
						});

						// 颜色选择
						var color = $(".yanse");
						color.click(function() {
							color.css("border", "#DCDCDC 1px solid");
							$(this).css("border", "red 1px solid");
							var colorId = $(this).attr("colorId");
							$.ajax({
								type : "POST",
								url : "http://localhost:8888/shoespro/waresDetailhandler.action?method=wareDetailAjax",
								dataType: "json",
								data : "colorId="+colorId,
								success : function(msg) {
									//第一组数据
									var imgBig1 = msg.data1.imgsBig;
									var imgsCent1 = msg.data1.imgsCent;
									var imgsSmall1 = msg.data1.imgsSmall;
									//第二组数据
									var imgBig2 = msg.data2.imgsBig;
									var imgsCent2 = msg.data2.imgsCent;
									var imgsSmall2 = msg.data2.imgsSmall;
									//第三组数据
									var imgBig3 = msg.data3.imgsBig;
									var imgsCent3 = msg.data3.imgsCent;
									var imgsSmall3 = msg.data3.imgsSmall;
									//第四组数据
									var imgBig4 = msg.data4.imgsBig;
									var imgsCent4 = msg.data4.imgsCent;
									var imgsSmall4 = msg.data4.imgsSmall;
									//第五组数据
									var imgBig5 = msg.data5.imgsBig;
									var imgsCent5 = msg.data5.imgsCent;
									var imgsSmall5 = msg.data5.imgsSmall;
									
									//左侧中大图片属性赋值
									img_cent.attr("imgBig", imgBig1);
									img_cent.attr("src", imgsCent1);
									//左侧五个小图片赋值
									var small_Imgs = $("#body_top_left").children();
									var smallImgs1 = small_Imgs.eq(2).children();
									var smallImgs2 = small_Imgs.eq(3).children();
									var smallImgs3 = small_Imgs.eq(4).children();
									var smallImgs4 = small_Imgs.eq(5).children();
									var smallImgs5 = small_Imgs.eq(6).children();
									
									smallImgs1.attr("imgBig", imgBig1);
									smallImgs1.attr("imgCent", imgsCent1);
									smallImgs1.attr("src", imgsSmall1);
									
									smallImgs2.attr("imgBig", imgBig2);
									smallImgs2.attr("imgCent", imgsCent2);
									smallImgs2.attr("src", imgsSmall2);
									
									smallImgs3.attr("imgBig", imgBig3);
									smallImgs3.attr("imgCent", imgsCent3);
									smallImgs3.attr("src", imgsSmall3);
									
									smallImgs4.attr("imgBig", imgBig4);
									smallImgs4.attr("imgCent", imgsCent4);
									smallImgs4.attr("src", imgsSmall4);
									
									smallImgs5.attr("imgBig", imgBig5);
									smallImgs5.attr("imgCent", imgsCent5);
									smallImgs5.attr("src", imgsSmall5);
								}
							});
						});
						// 尺码选择
						var chima = $(".chima p");
						chima.click(function() {
							chima.css("border", "#DCDCDC 1px solid");
							$(this).css("border", "red 1px solid");
							$.ajax({
								type : "POST",
								url : "registServlet",
								data : "userName=" + userName,
								dataType : "text",
								success : function(msg) {
									console.log(msg);
								}
							});
						});

						// 数量选择
						var inputShu = $(".shuliang input");

						var jianhao = $("#jianhao");
						var jiahao = $("#jiahao");
						jianhao.click(function() {
							var jianshu = inputShu.val();
							var intjianshu = parseInt(jianshu);
							if (intjianshu > 1) {
								inputShu.val(intjianshu - 1);
							}
						});
						jiahao.click(function() {
							var jiashu = inputShu.val();
							var intjiashu = parseInt(jiashu);
							inputShu.val(intjiashu + 1);
						});

						// 右下导航栏效果
						var leibie = $(".leibie");
						leibie.mouseenter(function() {
							$(this).trigger("click");
						});

					});
				}
			});
		}
		loadData();
		function getQueryString(name) {
		    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");   
		    var r = window.location.search.substr(1).match(reg);   
		    if (r != null) return decodeURI(r[2]); return null;   
		}
		
		//加入购物车
		var toadd = function(){
			if(uid == "*"){
				window.location.href = "login.jsp";
			}
			else{
				var number = document.getElementById('number').value;
				$.ajax({
					type : "POST",
					url : "myshopcart.action?method=addMyShopCart",
					data :{
						lightId : lightId,
						uid : uid,
						number : number
					},
				})
			window.location.href = "myshopcart.action?method=addcart&uid="+uid+"";
			}
		}
		
		//统计点击次数
		var addclicks = function(){
			var lightId = getQueryString('lightid'); 
			$.ajax({
				type : "POST",
				url : "light.action?method=addclicks",
				data :{
					lightId : lightId,
				},
			});
		}
		addclicks();
		
	</script>
</body>
</html>
