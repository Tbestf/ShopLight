<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
String param = request.getParameter("orderID");//param就是取到的传递过来的内容，试试吧
%> 
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>order_main</title>

<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/css_yefei/comment_main.css" rel="stylesheet" charset="gb2312">
<link href="css/css_yefei/common.css" type="text/css" rel="stylesheet"/>
<link href="css/css_yefei/order.css" type="text/css" rel="stylesheet" charset="gb2312"/>
</head>
<body>
		<jsp:include page="header.jsp"></jsp:include>
	
		<!--右侧侧边栏 删除-->
		
		<!-- 个人中心开始 -->
    
	<div class="container" style="width: 980px; background-color: #eeeeee;">
		<div class="container1">
			您当前所在的位置:
			 <a href="#">用户中心</a> > 
			 <a href="#">个人资料</a>
		</div>
		
		<div class="row">
			<!-- 左侧边栏 -->
			<!-- 左侧边栏   2018/4/18 更换 -->
			<jsp:include page="leftSideSidebar.jsp"></jsp:include>	<!-- 个人中心主页 -->

				<!-- 个人中心主页 -->
				<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
					<div class="personal_orders personal_data_aside">
						
						
						<div class="liangbing_addSize_div"  style="margin: 0px 0px 0px 40px;">
        					<table class="bingotable"  id="tablebody" style="text-align: letf;  border: 2px solid #D3D3D3; font-size: 32px; " >
        					       
							<script type="text/html" id="mscList-template">
						      {{each msc}}	
                                 <tr>
        					            <td  class="liangbing_td1"  style=" font-size: 18px; ">订单信息: </td>
						           </tr> 
								   <tr>
										<td class="liangbing_td1" style=" font-size: 18px; ">品牌编号  <i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.brandId}}
										</td>

									</tr>
								   <tr>
										<td class="liangbing_td1" style=" font-size: 18px; ">商品描述  <i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2" style=" font-size: 15px; ">
											{{$value.description}}
										</td>

									</tr>
									
									<tr>
										<td class="liangbing_td1" style=" font-size: 18px; ">单价  <i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2"style=" font-size: 18px; ">
											{{$value.price}}
										</td>

									</tr>
									<tr>
										<td class="liangbing_td1" style=" font-size: 18px; ">购买数量  <i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2"style=" font-size: 18px; ">
											{{$value.buyQuantity}}
										</td>

									</tr>
									<tr>
										<td class="liangbing_td1" style=" font-size: 18px; ">总价  <i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.totalPrice}}
										</td>

									</tr>
									<tr>
										<td class="liangbing_td1" style=" font-size: 18px; ">下订单日期   <i style="color: red;font-style: normal;"></i></td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.orderDate}}
										</td>

									</tr>
									<tr style=" font-size: 18px; ">
										<td class="liangbing_td1" style=" font-size: 18px; ">订单状态   <i style="color: red;font-style: normal;"></i></td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.orderState}}
										</td>

									</tr>
								
								
								
								
							
									<tr>
										 <td class="liangbing_td1"  valign="top" style=" font-size: 18px; " >详细地址<i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.address}}
										</td>
									</tr>
									<tr>
										<td class="liangbing_td1" style=" font-size: 18px; ">邮政编码   <i style="color: red;font-style: normal;">*</i> </td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.postalCode}}
										</td>

									</tr>
									<tr>
										<td class="liangbing_td1" style=" font-size: 18px; " >收货人姓名  <i style="color: red;font-style: normal;">*</i> </td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.receiveName}}
										</td>

									</tr>
									<tr>
										<td class="liangbing_td1" style=" font-size: 18px; ">手机号码   <i style="color: red;font-style: normal;"></i> </td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.receivePhone}}
										</td>

									</tr>
							{{/each}}
                          </script>
								</table>
								
						
						</div>
						
					</div>
				</div>
			</div>
		</div>
		

<script type="text/javascript" src="js/js_yefei/bootstrap.min.js"></script>
<script type="text/javascript" src="js/js_yefei/tab.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>
<script type="javascript/text" src="js/bootstrap.js"></script>
<script src="js/js-xsx/jquery-1.8.3.js" type="text/javascript"></script>



			
<script>
function getQueryString(name) {
    var result = window.location.search.match(new RegExp("[\?\&]" + name + "=([^\&]+)", "i"));
    if (result == null || result.length < 1) {
        return "";
    }
    return result[1];
}
		var loadLbtData = function() {

			var str = getQueryString("orderID");
			$.ajax({
				type : "POST",
				url : "orders.action?method=userOrderDisplay2",
				data : {
 					orderId : str
				},
				success : function(json) {
					var data = eval("(" + json + ")");
					var html = template('mscList-template', {
						msc : data
					});
					$('#tablebody').html(html);
					
					
			
				}
			});
			
			 
		};
		loadLbtData();
	</script>

</body>
</html>