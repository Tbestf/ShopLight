<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String uid = (String) session.getAttribute("uid");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
	    <title>订单页面</title>
		<link rel="stylesheet" href="css/LB/indent.css"> 
	    <link rel="stylesheet" href="css/LB/style.css"> 
	    <link rel="stylesheet" href="css/LB/liangbing2.css">
	    <link rel="stylesheet" href="css/bootstrap.css">
	    <link rel="stylesheet" href="css/index_zmj.css">
	    <script type="text/javascript" src="js/LB/jquery-2.2.1.js"></script>
		<script type="text/javascript" src="js/LB/LB2.js"></script>
		<script type="text/javascript" src="js/LB/huarui.js"></script>
	</head>
	<body>
		<div class="homepage">
			<jsp:include page="header.jsp"></jsp:include>
			
			<!--右侧侧边栏 删除-->
	   
		  	<div class="container" style="width: 1024px;">
				<div class="container"  style="width: 100%;">
					<div class="liangbing_div" >
						<div>
							<h3 class="liangbing_h3">
								确认收货地址
							</h3>
							<div class="liangbing_siteDiv">
								<div class="liangbing_wrap" style="cursor: pointer;">
									<div class="one" >
										<h5 class="liangbing_h5">
											<em id="name"class="liangbing_em"></em> 收		
										</h5>
										邮编：<span id="postalCode"></span>
										<p id="address"><p>
										手机号：<span id="phone"></span>
									</div>
								</div>
							</div>
						 </div>
					</div>
				</div>
			   <div class="container" style="width: 100%; ">
				  <div class="liangbing_div" >
						<div>
							<h3 class="liangbing_h3">
								确认订单信息
							</h3>
							<table class="bingotable" style="font-size:15px;text-align: center;border: 1px solid #D3D3D3;"  >
							  <tr style="border: 1px solid #D3D3D3;">
								 <td style="width: 38%; border: 1px solid #D3D3D3;">商品信息</td>
								 <td style="border: 1px solid #D3D3D3;">颜色</td>
								 <td style="border: 1px solid #D3D3D3;">单价(元)</td>
								 <td style="border: 1px solid #D3D3D3;">数量</td>
								 <td>小计(元)</td>
							  </tr>
							  <tbody id="zx">
							  <script type="text/html" id="zxList-template">
								{{each zx}}
							 	 <tr>
									<td>
								 	 <img src="{{$value.images}}">
								 	 <p style="width: 200px;">{{$value.description}}</p>
									</td>
									<td><span>颜色:&nbsp&nbsp{{$value.color}}</span></td>
									<td><span>￥{{$value.price}}</span></td>
									<td><span>{{$value.buyQuantity}}</span></td>
									<td><span>￥{{$value.totalPrice}}</span></td>
 								 </tr>
 								{{/each}}
								</script>
								</tbody>
							</table>
						</div>
					</div>  	
			   </div>
			   <div class="hz">
					<div class="count">
					 <div class="js">
					 <div>
					   <p>
					     <i style="font-style:normal">共<span id ='bq' style="color:red"></span>件商品总金额：</i>
					   </p> 
					  <p>
					     <i style="font-style:normal">运费：</i>
					   </p>
					   </div>
					</div>
					   <div class="qkk" style="margin-top: -58px;">
					      <p style="color:red;">￥<span id="ttp" style="color:red;font-weight: 500;font-size: 13px;"></span></p>
						  <p><span style="color:red;font-weight: 500;font-size: 13px;">￥0.00</span></p>
					   </div>
					</div>	
				</div>
			   <div class="container" style="width: 100%;">
					<div class="bote" id="bote" style="padding: 25px 0px 160px 0px;">
					  <a class="button" href="payment.jsp?uid=<%=uid%>" style="display:inline-block；">提交订单</a>
				    </div>
				</div>
			</div>
	   </div>  		
		<jsp:include page="footer.jsp"></jsp:include>
		
		<script type="text/javascript" src="js/LB/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="js/template-web.js"></script>
		<script type="text/javascript" src="js/index_zmj.js"></script>
		<script type="text/javascript" src="js/LB/distpicker.data.js"></script>
		<script type="text/javascript" src="js/LB/distpicker.js"></script>
		<script src="js/LB/jquery.prettyPhoto.js"></script>
		<script src="js/LB/jquery.isotope.min.js"></script>
		<script src="js/LB/wow.min.js"></script>
	
	</body>
	<script>
		var loadData = function(){
			var uid = getQueryString('uid');
			$.ajax({
				type : "POST",
				url : "orders.action?method=selectmyorders",
				data : {
					userId : uid
				},
				success : function(json) {
					var data = eval("(" + json + ")");
					var html = template('zxList-template', {
						zx : data
					});
					$('#zx').html(html);
				}	
			});
		}
		loadData();
		var loadData2 = function(){
			var uid = getQueryString('uid');
			$.ajax({
				type : "POST",
				url : "orders.action?method=AllPN",
				data : {
					userId : uid
				},
				success : function(json) {
					var data = eval("(" + json + ")");
					$('#bq').html(data[0].buyQuantity);
					$('#ttp').html(data[0].totalPrice);
				}	
			});
		}
		loadData2();
		var loadData3 = function(){
			var uid = getQueryString('uid');
			$.ajax({
				type : "POST",
				url : "message.action?method=selectusers",
				data : {
					uid : uid
				},
				success : function(json) {
					var data = eval("(" + json + ")");
					$('#name').html(data[0].userName);
					$('#postalCode').html(data[0].postalCode);
					$('#address').html(data[0].address);
					$('#phone').html(data[0].phone);
				}	
			});
		}
		loadData3();
		function getQueryString(name) {
		    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
		    var r = window.location.search.substr(1).match(reg);
		    if (r != null) return decodeURI(r[2]); return null;
		}
	</script>
</html>