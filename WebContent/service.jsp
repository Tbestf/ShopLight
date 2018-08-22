<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String uid = (String) session.getAttribute("uid");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>personal_main</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link href="css/css_liuzhidan/personal_main.css" rel="stylesheet">
	<link href="css/xueyicss/font-awesome.min.css" rel="stylesheet">
    <link href="css/xueyicss/animate.min.css" rel="stylesheet">
    <link href="css/xueyicss/responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="css/xueyicss/xueyi.css"> 
	<link rel="stylesheet" type="text/css" href="css/xueyicss/xy.css"/>
	<link rel="stylesheet" type="text/css" href="css/xueyicss/index.css"/>
	<link rel="stylesheet" type="text/css" href="css/xueyicss/common.css"/>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="width: 980px; background-color: #eeeeee;">
		<div class="container1">
			您当前所在的位置:
			 <a href="personal.jsp?uid=<%=uid%>">用户中心</a> > 
			 <a href="personal.jsp?uid=<%=uid%>">个人中心</a>
		</div>
		
		<div class="row">
			<!-- 左侧边栏 -->
			<jsp:include page="leftSideSidebar.jsp"></jsp:include>	<!-- 个人中心主页 -->
			
			<!-- 个人中心主页 -->
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			
				<div class="personal_orders">
					<div id="top">
						<div id="top-left">
							<h4 style="color:#666666">申请售后</h4>
						</div>
						<div id="top-rigth">
							<a href="#">
							<img src="images/xueyi/kehus.png"/>
							</a>
						</div>
					</div>
						<div id="centers">
							<div>
								<table  id="tablebody" class="table-bordered">
									       
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
										<td class="liangbing_td1" style=" font-size: 18px; ">订单编号  <i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2" style=" font-size: 15px; ">
											<input type="text" name="orderId2" id="orderId2" disabled="disabled" value="{{$value.orderId}}"  style="width:40px">	
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
										<td class="liangbing_td1" style=" font-size: 18px; ">下订单日期  <i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.orderDate}}
										</td>

									</tr>
									<tr style=" font-size: 18px; ">
										<td class="liangbing_td1" style=" font-size: 18px; ">订单状态 </td>
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
										<td class="liangbing_td1" style=" font-size: 18px; " >收货人姓名  <i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.receiveName}}
										</td>

									</tr>
									<tr>
										<td class="liangbing_td1" style=" font-size: 18px; ">手机号码  </td>
										<td class="liangbing_td2" style=" font-size: 18px; ">
											{{$value.receivePhone}}
										</td>

									</tr>
							{{/each}}
                          </script>
								</table>
							</div>
							<div id="tishi">
								<span>
								<em style="color: red">*</em>
								<span style="color: red">温馨提示&nbsp:&nbsp</span></span>
								 <label>本次售后服务将由 
								 <span style="color: red; ">供应商</span>为您提供
								 </label>
							</div>
						</div>
						
						<div id="sdsd">
							
							<div id="sss">
								<span>
									<em style="color: red">*</em>
									<span >服务类型&nbsp:&nbsp</span>
								</span>
								<input type="radio" name="fuwu" value="换货">&nbsp换货
								&nbsp&nbsp
								<input type="radio" name="fuwu" value="退货">&nbsp退货
								&nbsp&nbsp
								<input type="radio" name="fuwu" value="退货">&nbsp保修
								</div><br/>
								<div style="padding-left:11px">
									<span>
									<em style="color: red">*</em>
									<span>提交数量&nbsp:&nbsp</span>
									</span>
						<div id="shuliang">
						
							<input type="text" value=' '   style="width:40px">
							
							&nbsp&nbsp
							 <span>请选择你提交的数量</span>
							</div>
						</div><br/>
						<div id="yuanyin">
							<span>&nbsp&nbsp&nbsp<em style="color: red">*</em>
							<span>提交原因&nbsp:&nbsp</span>
							</span>
							<select style="width:80px;height:28px;"> 
								<option>请选择</option>
								<option>质量问题</option>
								<option>其他原因</option>
							</select>
						</div><br/>
						<div id="miaoshu">
							<span>&nbsp&nbsp&nbsp<em style="color: red">*</em>
							<span>问题描述&nbsp:&nbsp</span>
							</span>
							 <div >
								<div id="duo">
								 <textarea rows="9px;" cols="70px;" id="url"></textarea>
								 </div>
								 <br/>
								  <div id="hh">
								  <span >请您如实填写申请原因及商品情况，字数在500字内。</span>
								  </div><br/>
								
								
								<div id="anniu">
									<input type="button" onclick="location='order_manage.jsp?uid=<%=uid %>'" value="确认提交"    >  </input>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

	<script type="text/javascript" src="js/jquery-2.2.1.js"></script> 
	<script src="js/xueyijs/jquery.prettyPhoto.js"></script>
	<script src="js/xueyijs/jquery.isotope.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/xueyijs/main.js" charset="gb2312"></script>
	<script src="js/xueyijs/wow.min.js" charset="gb2312"></script>
	<script src="js/xueyijs/imgUp.js" charset="gb2312"></script>

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
			$('#orderId').val(str);
			$.ajax({
				type : "POST",
				url : "orders.action?method=userOrderDisplay",
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