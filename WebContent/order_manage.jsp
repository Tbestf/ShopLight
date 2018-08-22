<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String uid = (String) session.getAttribute("uid");
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>订单页面</title>
<style type="text/css">
	   			*{
					margin:0px;
					padding:0px
				}
				
				.topdiv{
					
					width:100%;
					height:150px;
				}

				.topdivone{
					background: #ddd;
					width:100%;
					height:30px;
				}

				
				#top-bar {
					height: 30px;
					width:1024px;
					margin:0px auto;
					background: #ddd;
				}

				.top-bar-content {
					height: 30px;
					line-height: 30px;
				}
				.top-bar-content a{
					text-decoration: none;
					color: #222;
					transition: color 0.4s;
				}
				.top-bar-content a:hover{
					color: #C1121D;
				}


				.topdivtwo{
					
					width:100%;
					height:120px;
					background-color:#ffffff;
				}

				.alldiv{
					
					width:1024px;
					height:auto;
					margin:0px auto;
					
					
				}
				
				.alldivone{
					
					width:100%;
					height:60px;
					margin:0px auto
				}

				.alldivtwo{
					
					width:980px;
					margin:0px auto;
					
					background-color:#ffffff
				}
				#tableid tbody td{
					line-height:70px
				}

				.alldivthree{
					width:980px;
					height:100px;
					margin:0px auto;
					
					background-color:#ffffff
				}

				#secondTable{
					margin-bottom:10px;
					margin-top:10px;
					margin-left:10px;
					
				}

				

				#secondTable td{
					width:150px;
					
				}


				.lili{
					color:red;
				}
	
			.container-cust{
				width: 1024px;
				margin: 0 auto;

			}

</style>
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/css_yefei/comment_main.css" rel="stylesheet" charset="gb2312">
<link href="css/css_yefei/common.css" type="text/css" rel="stylesheet"/>
<link href="css/css_yefei/order.css" type="text/css" rel="stylesheet" charset="gb2312"/>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
		
<!--导航菜单-->
    
    <!-- 个人中心开始 -->
    
	<div class="container" style="width: 980px; background-color: #eeeeee;">
		<div class="container1">
			您当前所在的位置:
			 <a href="personal.jsp?uid=<%=uid%>">用户中心</a> > 
			 <a href="order_manage.jsp?uid=<%=uid%>">我的订单</a>
		</div>
		
		<div class="row">
			<!-- 左侧边栏 -->
		
		<!-- 左侧边栏   2018/4/18 更换 -->
			<jsp:include page="leftSideSidebar.jsp"></jsp:include>	<!-- 个人中心主页 -->
			
			
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
				
				<div class="personal_orders">
					<div class="my_order">
						<div class="my_order1"><span class="as"> 我的订单</span></div>
						<!-- <div class="my_order2"><input type="checkbox"> 全部匿名评论 &nbsp;</div> -->
					</div>

					<div class="order_info"> 
						<!-- <ul class="nav nav-tabs">
						  <li><a href="#home" data-toggle="tab">首页</a></li>
						  <li><a href="#profile" data-toggle="tab">介绍</a></li>
						  <li><a href="#messages" data-toggle="tab">消息</a></li>
						  <li><a href="#settings" data-toggle="tab">设置</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="home">...</div>
							<div class="tab-pane" id="profile">...</div>
							<div class="tab-pane" id="messages">...</div>
							<div class="tab-pane" id="settings">...</div>
						</div> -->
						 <div class="userCenterRight fr cUserTableTrStyle" style="width:100%">
							<!-- 嵌入订单状态数 -->
							<ul class="cmyUserTab clearfix mt30 tc pl20">
							  <li  class=" fl" ><img  src="images/images_yefei/userRedLine.png" /></li>
							  <li  class="fl current">我的订单</li><!--  style="font-size: 25px;" -->
							  <li class="fl">
								<ul class="cmyOrdersTab clearfix f12 tc pl20">
								  <li id="one1"  class="current2" onclick="setTab('one',1,5,'current2')" >待支付</li>
								  <li id="one2"  class="" onclick="setTab('one',2,5,'current2')" >待发货&nbsp;&nbsp;<span class="cUserRed2"></span></li>
								  <li id="one3" class="" onclick="setTab('one',3,5,'current2')" >已发货&nbsp;&nbsp;<span class="cUserRed2"></span></li>
								  <li id="one4" class="" onclick="setTab('one',4,5,'current2')" >订单完成&nbsp;&nbsp;<span class="cUserRed2"></span></li>
								  <li id="one5" class="" onclick="setTab('one',5,5,'current2')" >售后&nbsp;&nbsp;<span class="cUserRed2"></span></li>
								</ul>
							  </li>
							</ul>
			 <!--待支付订单-->
			<div id="con_one_1" class="user-order-list" style="display:block">
			  <div class="" style="padding-top:10px">
				
				<ul class="styleUL styleAutoSize  tc" style="width:724px" >
					<li class="tc mt15">
						  <table id="tableid" class="table"><!--table-striped斑马线样式,tbody的行添加样式每隔一行有颜色 table-bordered添加边框-->
						<!--表头标签(表格标题)-->
						<thead>	
							<td>&nbsp&nbsp&nbsp&nbsp<input id="checkBoxId"  class="checkBoxId" value="1" type="checkbox"/>  全选</td>
							<td style="text-align:center">商品信息</td>
							<td  style="text-align:center">收货人</td>
							<td style="text-align:center">总金额</td>
							<td  style="text-align:center;width:100px">订单状态</td>
							<td  style="text-align:center">操作</td>
						</thead>
					
						<!--表体标签-->
						<tbody id="tablebody1">
						<script type="text/html" id="mscList-template">
						{{each msc}}
                           {{if  $value.orderStateId==1}}
	   						<tr id="trrrrr">		
					    		<td>&nbsp&nbsp&nbsp&nbsp<input class="checkBoxs" type="checkbox"/><input type="hidden"  name="hden" value="{{$value.orderId}}"/></td>
	    						<td style="width:290px">
	   								<dl>
										<dt><div style="float:left;width:82px;height:69px"><a href="light.action?method=selectLight&lightId={{$value.lightId}}"><img src="{{$value.images}}" style="width:82px;height:69px"/></a></div></dt>
		  							 	<dd>
										 <span>{{$value.description}}</span>
										 <span>{{$value.lightId}}</span><br>
										 <span>颜色:&nbsp{{$value.color}}&nbsp&nbsp&nbsp 放置位置:&nbsp&nbsp {{$value.locate}}</span>
		  								</dd>
	  								</dl>
       							</td>
	  							
	  							<td name="receiveName" style="text-align:center">{{$value.receiveName}}</td>
                                <td style="text-align:center">￥<span name="danjia">{{$value.totalPrice}}</span></td>
	  							<td name="orderState" style="text-align:center">{{$value.orderState	}}</td>
	  							<td style="text-align:center"><span class="shouCang" style="Cursor:pointer"><a href="orders_disply.jsp?orderID={{$value.orderId}}">查看订单</a></span> | <span class="delete" style="Cursor:pointer">删除</span></td>
							</tr>
                           {{/if}}
						{{/each}}
					 </script>

						</tbody>
				 	</table>
					 <table id="secondTable">
						<tr>
						    <td style="text-align:center"><span  style="color:blue;Cursor:pointer; font-size: 15px;">操作：</span></td>
							<td style="text-align:center"><span id="alldelete" style="color:blue;Cursor:pointer; font-size: 15px;">删除所选商品</span></td>
							<td style="text-align:center"><span id="cleancar" style="color:blue;Cursor:pointer; font-size: 15px;">清空订单</span></td>
							
						</tr>
				</table>
				<a href="javascript:toadd();">
				<input type="button" class="btn btn-danger btn-sm" value="我的购物车" style="margin-top:14px;float:left;margin-left:22px"/>
	            </a>
	            <div style="width: 500px; height: 60px; float: right">
				<p style="float: left; font-size: 15px;">
					<font color="#656565" style=" font-size: 15px;">已选<span style="color: red; font-size: 23px;" id="choosecount">0</span>笔订单
					</font>&nbsp&nbsp&nbsp&nbsp商品总价(不含运费):<font color="red" size="6px"style="font-size: 21px;">￥<span id="checktotalmoney"style="font-size: 23px;">0</span></font>
				</p>
			    	<input type="button" class="btn btn-danger btn-sm" value="去结算" style="float: right; margin-top: 10px; margin-right: 40px; font-size: 15px;">
		   	
	           </div>			
					
					
					</li>
				</ul>
				<!-- 分页调用开始 -->
				<div class="pageNumber tr mt5"></div>
				<!-- 分页调用结束 -->
			  </div>

				
			</div>
			<!--待发货订单-->
			<div id="con_one_2" class="user-order-list" style="display:none">
			  <div class="" style="padding-top:10px">
				
				<ul class="styleUL styleAutoSize  tc" style="width:724px" >
					<li class="tc mt15">
				           <table id="tableid" class="table"><!--table-striped斑马线样式,tbody的行添加样式每隔一行有颜色 table-bordered添加边框-->
						<!--表头标签(表格标题)-->
						<thead>	
							<td>&nbsp&nbsp&nbsp&nbsp<input id="checkBoxId2" class="checkBoxId" value="2"  type="checkbox"/>  全选</td>
							<td style="text-align:center">商品信息</td>
							<td  style="text-align:center">收货人</td>
							<td style="text-align:center">总金额</td>
							<td  style="text-align:center;width:100px">订单状态</td>
							<td  style="text-align:center">操作</td>
						</thead>
					
						<!--表体标签-->
						<tbody id="tablebody2">
						<script type="text/html" id="msc2List-template">
						{{each msc2}} 
                       
                         {{if  $value.orderStateId==2}}
	   						<tr id="trrrrr">		
					    		<td>&nbsp&nbsp&nbsp&nbsp<input class="checkBoxs" type="checkbox"/><input type="hidden" name="hden" value="{{$value.orderId}}"/></td>
	    						<td style="width:290px">
	   								<dl>
										<dt><div style="float:left;width:82px;height:69px"><a href="light.action?method=selectLight&lightId={{$value.lightId}}"><img src="{{$value.images}}" style="width:82px;height:69px"/></a></div></dt>
		  							 	<dd>
										 <span>{{$value.description}}</span>
										 <span>{{$value.lightId}}</span><br>
										 <span>颜色:&nbsp{{$value.color}}&nbsp&nbsp&nbsp 放置位置:&nbsp&nbsp {{$value.locate}}</span>
		  								</dd>
	  								</dl>
       							</td>
	  							
	  							<td name="receiveName" style="text-align:center">{{$value.receiveName}}</td>
                                <td style="text-align:center">￥<span name="danjia">{{$value.totalPrice}}</span></td>
	  							<td name="orderState" style="text-align:center">{{$value.orderState	}}</td>
	  							<td style="text-align:center"><span class="shouCang" style="Cursor:pointer"><a href="orders_disply.jsp?orderID={{$value.orderId}}">查看订单</a></span> | <span class="unsubscribe" style="Cursor:pointer"><a href="service.jsp?orderID={{$value.orderId}}">申请退款</a></span></td>
							</tr>
                            {{/if}}
						{{/each}}
					 </script>

						</tbody>
				 	</table>
 
		        		<a href="javascript:toadd();">
		        		<input type="button" class="btn btn-danger btn-sm" value="我的购物车" style="margin-top:14px;float:left;margin-left:22px"/>
						</a>
				    </li>
				</ul>
				<!-- 分页调用开始 -->
				<div class="pageNumber tr mt5"></div>
				<!-- 分页调用结束 -->
			  </div>
				
			</div>
			<!--已发货订单-->
			<div id="con_one_3" class="user-order-list"  style="display:none">
			  <div class="" style="padding-top:10px">
				
				<ul class="styleUL styleAutoSize  tc" style="width:724px" >
					<li class="tc mt15">
						  <table id="tableid" class="table"><!--table-striped斑马线样式,tbody的行添加样式每隔一行有颜色 table-bordered添加边框-->
						<!--表头标签(表格标题)-->
						<thead>	
							<td>&nbsp&nbsp&nbsp&nbsp<input id="checkBoxId3" class="checkBoxId" value="3" type="checkbox"/>  全选</td>
							<td style="text-align:center">商品信息</td>
							<td  style="text-align:center">收货人</td>
							<td style="text-align:center">总金额</td>
							<td  style="text-align:center;width:100px">订单状态</td>
							<td  style="text-align:center">操作</td>
						</thead>
					
						<!--表体标签-->
						<tbody id="tablebody3">
						<script type="text/html" id="msc3List-template">
						{{each msc3}}
                            {{if  $value.orderStateId==3}}
	   						<tr id="trrrrr">		
					    		<td>&nbsp&nbsp&nbsp&nbsp<input class="checkBoxs" type="checkbox"/><input type="hidden" name="hden" value="{{$value.orderId}}"/></td>
	    						<td style="width:290px">
	   								<dl>
										<dt><div style="float:left;width:82px;height:69px"><a href="light.action?method=selectLight&lightId={{$value.lightId}}"><img src="{{$value.images}}" style="width:82px;height:69px"/></a></div></dt>
		  							 	<dd>
										 <span>{{$value.description}}</span>
										 <span>{{$value.lightId}}</span><br>
										 <span>颜色:&nbsp{{$value.color}}&nbsp&nbsp&nbsp 放置位置:&nbsp&nbsp {{$value.locate}}</span>
		  								</dd>
	  								</dl>
       							</td>
	  							
	  							<td name="receiveName" style="text-align:center">{{$value.receiveName}}</td>
                                <td style="text-align:center">￥<span name="danjia">{{$value.totalPrice}}</span></td>
	  							<td name="orderState" style="text-align:center">{{$value.orderState	}}</td>
	  							<td style="text-align:center"><span class="shouCang" style="Cursor:pointer"><a href="orders_disply.jsp?orderID={{$value.orderId}}">查看订单</a></span> | <span class="delete" style="Cursor:pointer">删除</span></td>
							</tr>
                            {{/if}}
						{{/each}}
                      
					 </script>

						</tbody>
				 	</table>
					<a href="javascript:toadd();">
			       	<input type="button" class="btn btn-danger btn-sm" value="我的购物车" style="margin-top:14px;float:left;margin-left:22px"/>
					</a>
					</li>
				</ul>
				<!-- 分页调用开始 -->
				<div class="pageNumber tr mt5"></div>
				<!-- 分页调用结束 -->
			  </div>
				
				
			</div>
			<!--待评价-->
			<div id="con_one_4"  class="user-order-list"  style="display:none">
			  <div class="" style="padding-top:10px">
				
				<ul class="styleUL styleAutoSize  tc" style="width:724px" >
					<li class="tc mt15">
						  <table id="tableid" class="table"><!--table-striped斑马线样式,tbody的行添加样式每隔一行有颜色 table-bordered添加边框-->
						<!--表头标签(表格标题)-->
						<thead>	
							<td>&nbsp&nbsp&nbsp&nbsp<input id="checkBoxId4" class="checkBoxId" value="4" type="checkbox"/>  全选</td>
							<td style="text-align:center">商品信息</td>
							<td  style="text-align:center">收货人</td>
							<td style="text-align:center">总金额</td>
							<td  style="text-align:center;width:100px">订单状态</td>
							<td  style="text-align:center">操作</td>
						</thead>
					
						<!--表体标签-->
						<tbody id="tablebody4">
						<script type="text/html" id="msc4List-template">
						{{each msc4}}
                          {{if  $value.orderStateId==4}}
	   						<tr id="trrrrr">		
					    		<td>&nbsp&nbsp&nbsp&nbsp<input class="checkBoxs" type="checkbox"/><input type="hidden" name="hden" value="{{$value.orderId}}"/></td>
	    						<td style="width:290px">
	   								<dl>
										<dt><div style="float:left;width:82px;height:69px"><a href="light.action?method=selectLight&lightId={{$value.lightId}}"><img src="{{$value.images}}" style="width:82px;height:69px"/></a></div></dt>
		  							 	<dd>
										 <span>{{$value.description}}</span>
										 <span>{{$value.lightId}}</span><br>
										 <span>颜色:&nbsp{{$value.color}}&nbsp&nbsp&nbsp 放置位置:&nbsp&nbsp {{$value.locate}}</span>
		  								</dd>
	  								</dl>
       							</td>
	  							
	  							<td name="receiveName" style="text-align:center">{{$value.receiveName}}</td>
                                <td style="text-align:center">￥<span name="danjia">{{$value.totalPrice}}</span></td>
	  							<td name="orderState" style="text-align:center">{{$value.orderState	}}</td>
	  							<td style="text-align:center"><span class="shouCang" style="Cursor:pointer"><a href="orders_disply.jsp?orderID={{$value.orderId}}">查看订单</a></span> | <span class="unsubscribe" style="Cursor:pointer"><a href="service.jsp?orderID={{$value.orderId}}">退换</a></span>| <span class="delete" style="Cursor:pointer">删除</span></td>
							</tr>

                            {{/if}}
						{{/each}}

					 </script>

						</tbody>
				 	</table>
					 	<a href="javascript:toadd();">
			         	<input type="button" class="btn btn-danger btn-sm" value="我的购物车" style="margin-top:14px;float:left;margin-left:22px"/>
						</a>
					</li>
				</ul>
				<!-- 分页调用开始 -->
				<div class="pageNumber tr mt5"></div>
				<!-- 分页调用结束 -->
			  </div>
			</div>
			<!--售后-->
			<div id="con_one_5" class="user-order-list"  style="display:none">
			  <div class="mt10">
				<!--我的订单 开始-->
				<div class="" style="padding-top:10px">
				 
				  <ul class="styleUL styleAutoSize  tc" style="width:724px">
					<li class="tc mt15">
					    <table id="tableid" class="table"><!--table-striped斑马线样式,tbody的行添加样式每隔一行有颜色 table-bordered添加边框-->
						<!--表头标签(表格标题)-->
						<thead>	
							<td><input id="checkBoxId5" class="checkBoxId" value="5" type="checkbox"/>全选</td>
							<td style="text-align:center">商品信息</td>
							<td  style="text-align:center">收货人</td>
							<td style="text-align:center">总金额</td>
							<td  style="text-align:center;width:100px">订单状态</td>
							<td  style="text-align:center">操作</td>
						</thead>
					
						<!--表体标签-->
						<tbody id="tablebody5">
						<script type="text/html" id="msc5List-template">
						{{each msc5}}
                           
	   						{{if  $value.orderStateId>=5}}
                               <tr id="trrrrr">		
					    		<td>&nbsp&nbsp&nbsp&nbsp<input class="checkBoxs" type="checkbox"/><input type="hidden" name="hden" value="{{$value.orderId}}"/></td>
	    						<td style="width:290px">
	   								<dl>
										<dt><div style="float:left;width:82px;height:69px"><a href="light.action?method=selectLight&lightId={{$value.lightId}}"><img src="{{$value.images}}" style="width:82px;height:69px"/></a></div></dt>
		  							 	<dd>
										 <span>{{$value.description}}</span>
										 <span>{{$value.lightId}}</span><br>
										 <span>颜色:&nbsp{{$value.color}}&nbsp&nbsp&nbsp 放置位置:&nbsp&nbsp {{$value.locate}}</span>
		  								</dd>
	  								</dl>
       							</td>
	  							
	  							<td name="receiveName" style="text-align:center">{{$value.receiveName}}</td>
                                <td style="text-align:center">￥<span name="danjia">{{$value.totalPrice}}</span></td>
	  							<td name="orderState" style="text-align:center">{{$value.orderState	}}</td>
	  							{{if  $value.orderStateId==5}}
                                <td style="text-align:center"><span class="shouCang" style="Cursor:pointer">售后中</span>| <span class="delete" style="Cursor:pointer">删除</span></td>
							     {{/if}} 
                                {{if  $value.orderStateId==6}}
                               <td style="text-align:center"><span class="shouCang" style="Cursor:pointer"><a href="orders_disply.jsp?orderID={{$value.orderId}}">查看订单</a></span> | <span class="unsubscribe" style="Cursor:pointer">售后完成</span>| <span class="delete" style="Cursor:pointer">删除</span></td>
                               {{/if}} 
                               </tr>
                            {{/if}}
						{{/each}}
					 </script>

						</tbody>
				 	</table>
				 	<a href="javascript:toadd();">
					<input type="button" class="btn btn-danger btn-sm" value="我的购物车" style="margin-top:14px;float:left;margin-left:22px"/>
	  				</a>
					</li>
				  </ul>
				  <!-- 分页调用开始 -->
				  <div class="pageNumber tr mt5"></div>
				  <!-- 分页调用结束 -->
				</div>
				<!--我的订单 结束-->
			  </div>
			</div>
			</div>

					</div>
					<div style="clear: both;"></div>
				</div>
				
		
				
			</div><!--右侧栏-->
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>



<script type="text/javascript" src="js/js_yefei/bootstrap.min.js"></script>
<script type="text/javascript" src="js/js_yefei/tab.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>
<script type="javascript/text" src="js/bootstrap.js"></script>
<script src="js/js-xsx/jquery-1.8.3.js" type="text/javascript"></script>



			
<script>
		var loadLbtData = function() {
			var hiddenn = $(this).parents("tr").find("[name=hden]").val();
			var countt = $(this).prev().val();
			var uid = getQueryString('uid');
			$.ajax({
				type : "POST",
				url : "orders.action?method=userDisplay",
				data : {
// 					orderState : ,
					userId : uid
				},
				success : function(json) {
					var data = eval("(" + json + ")");
					console.log(data);
					var html = template('mscList-template', {
						msc : data
					});
					$('#tablebody1').html(html);
					
					var html = template('msc2List-template', {
						msc2 : data
					});
					$('#tablebody2').html(html);
					
					var html = template('msc3List-template', {
						msc3 : data
					});
					$('#tablebody3').html(html);
					
					var html = template('msc4List-template', {
						msc4 : data
					});
					$('#tablebody4').html(html);
					var html = template('msc5List-template', {
						msc5 : data
					});
					$('#tablebody5 ').html(html);
					
					//获取所有小计的对象
					var xiaojiObj = $("[name=scount]");
					//获取所有单价的对象
					var danjiaObj = $("[name=danjia]");
					//获取所有数量的对象
					var countObj =1;
					for (var i = 0; i < xiaojiObj.length; i++) {
						$(xiaojiObj[i]).text(
								$(danjiaObj[i]).text());
					}
					//获取积分的对象框
					var jifengobj = $("[name=jifeng]");
					for (var i = 0; i < jifengobj.length; i++) {
						$(jifengobj[i]).text(
								$(danjiaObj[i]).text() * $(countObj[i]).val());
					}
					var zongjia = 0;
					//获取所有的小计对象
					var xiaojiObj = $("[name=scount]");
					for (var i = 0; i < xiaojiObj.length; i++) {
						zongjia = Number($(xiaojiObj[i]).text()) + Number(zongjia);
					}
					//获取总计对象 并设置计算总计值
					$('#totalmoney').text(zongjia);
					//计算总计值的公共方法
					function zongjimethod() {
						var zongjiaa = 0;
						//获取所有的小计对象
						var xiaojiObj = $("[name=scount]");
						for (var i = 0; i < xiaojiObj.length; i++) {
							zongjiaa = Number($(xiaojiObj[i]).text()) + Number(zongjiaa);
						}
						$('#totalmoney').text(zongjiaa);
					}
					//获取选中状态下的总积分公共方法
					function checktotalscore() {
						var checkboxarry = $('.checkBoxs');
						var count = 0;
						for (var i = 0; i < checkboxarry.length; i++) {
							//判断哪些复选框为选中状态
							if ($(checkboxarry[i]).is(':checked')) {
								console.log("有选中");
								//将选中状态下的那一行信息的小计对象提取出来
								var jifengobj = $(checkboxarry[i]).parents("tr").find("[name=jifeng1]");
								count = Number(count) + Number(jifengobj.text());
							}
						}
						$('#score1').text(count);
					}
					
					//获取选中状态下的总积分公共方法   *********************计算总价*********************
					function checktotalmoney() {
						var checkboxarry = $('#tablebody1 .checkBoxs');
						var count = 0;
						
						for (var i = 0; i < checkboxarry.length; i++) {
							//判断哪些复选框为选中状态
							
							
							if ($(checkboxarry[i]).is(':checked')) {
								console.log("有选中");
								//将选中状态下的那一行信息的小计对象提取出来
								var xiaojiobj = $(checkboxarry[i]).parents("tr").find(
										"[name=danjia]");
								console.log(xiaojiobj.text());
								count = Number(count) + Number(xiaojiobj.text());
							}

						}
						$('#checktotalmoney').text(count);
					}
				//	function choosecount() {
				//		var checkboxarry = $('#tablebody'+index+' .checkBoxs');
					//获取选中状态下的个数公共方法****************计算个数*****************************
					function choosecount() {
						var checkboxarry = $('#tablebody1 .checkBoxs');
						var count = 0;
						for (var i = 0; i < checkboxarry.length; i++) {
							//判断哪些复选框为选中状态
								console.log( checkboxarry+"----------");
								if ($(checkboxarry[i]).is(':checked')) {

									count = count + 1;
								}
						}
						$('#choosecount').text(count);
					}
					//小计计算的公共方法
					function xiaojimethod(object) {
						//获取小计的对象框
						var xiaojiobj = $(object).parents("tr").find("[name=scount]");
						console.log(xiaojiobj.text());
						//获取单价对象
						var danjiaobj = $(object).parents("tr").find("[name=danjia]");
						console.log(danjiaobj.text());
						//获取数量框对象
						var shuliang = $(object).parents("tr").find("[name=count]");
						console.log(shuliang.val());

						xiaojiobj.text(danjiaobj.text() * shuliang.val());
					}
					//积分计算的公共方法
					function jifengmethod(object) {
						//获取积分的对象框
						var jifengobj = $(object).parents("tr").find("[name=jifeng]");
						console.log(jifengobj.text());
						//获取单价对象
						var danjiaobj = $(object).parents("tr").find("[name=danjia]");
						console.log(danjiaobj.text());
						//获取数量框对象
						var shuliang = $(object).parents("tr").find("[name=count]");
						jifengobj.text(danjiaobj.text() * shuliang.val());
					}
					
						$('[name=znegJia]').click(function(){
								var shuliang=$(this).prev().val();
								var shul=$(this).parents("tr").find("[name=jifeng1]").text()-1;
								
							//	alert( "Data Saved: " + shul );
								if(shuliang>shul){
									confirm("数量不能能大于库存量");
								}else{
									var shuliang=Number(shuliang)+Number(1);
									$(this).prev().val(shuliang);
									xiaojimethod(this);
									jifengmethod(this);
									zongjimethod();
									checktotalmoney();
									checktotalscore();
				
								}
							})
					//获取数量增加按钮的对象集合添加事件对数量进行增加
					//获取全选框对象 并添加点击事件
					$('#checkBoxId').click(function() {
						//判断该复选框是否为选中状态
						var k=$(this).val();
						console.log($(this).val())
						var panduan = $(this).is(':checked');
						if (panduan) {
							$('#tablebody1 .checkBoxs').attr("checked", true);
							choosecount();
							checktotalmoney();
							
						} else {
							$('.checkBoxs').attr("checked", false);
							choosecount();
							checktotalmoney();
						
						}
					});
					//获取所有复选框对象 并添加事件
					$('.checkBoxs').click(function() {
						choosecount();
						checktotalmoney();
						
						var checkboxarry = $('.checkBoxs');
						for (var i = 0; i < checkboxarry.length; i++) {
							if (!$(checkboxarry[i]).is(':checked')) {
								$('#checkBoxId').attr("checked", false);
								break;

							} else if (i == checkboxarry.length - 1) {
								$('#checkBoxId').attr("checked", true);
							}
						}
					})
					//获取当前每行中的删除对象;并将当前行进行删除
					$('.delete').click(
							function() {
								choosecount();
								var trobj = $(this).parent().parent();
								trobj.remove();
								zongjimethod();
								checktotalmoney();
								checktotalscore();
								//获取隐藏域的值
								var hiddenn = $(this).parents("tr").find("[name=hden]")
										.val()

								$.ajax({
									type : "POST",
									url : "orders.action?method=userDelectorders",
									data : 
										{
										 orderId:hiddenn+","
										},
							
								/*  success: function(msg){
								   alert( "Data Saved: " + msg );
								 } */
								});

							});
					
					//获取当前每行中的删除对象;并将当前行进行删除
					$('.Unsubscribe').click(
							function() {
								choosecount();
								var trobj = $(this).parent().parent();
								trobj.remove();
								zongjimethod();
								checktotalmoney();
								checktotalscore();
								//获取隐藏域的值
								var hiddenn = $(this).parents("tr").find("[name=hden]")
										.val()

								$.ajax({
									type : "POST",
									url : "orders.action?method=userDelectorders",
									data : 
										{
										 orderId:hiddenn+","
										},
							
								/*  success: function(msg){
								   alert( "Data Saved: " + msg );
								 } */
								});

							});
					
					
					//获取当前每行中的收藏对象
					$('.shouCang').click(function() {
						//获取隐藏域的值
						console.log($(this).parents("tr").find("[name=hden]").val());
					});
					//获取第二个表格中的全选文字对象;并对该对象添加事件
					$('#allchoose').click(function() {
						var panduan = $('#checkBoxId').is(':checked');
						if (panduan) {
							$('#checkBoxId').attr("checked", false);
							$('.checkBoxs').attr("checked", false);
							choosecount();
							checktotalmoney();
							checktotalscore();
						} else {
							checktotalmoney();
							$('#checkBoxId').attr("checked", true);
							$('.checkBoxs').attr("checked", true)
						}
						choosecount();
						checktotalmoney();
						checktotalscore();
					})
					//获取删除所选商品的对象;并添加点击事件
					$('#alldelete')
							.click(
									function() {
										var hiddenn = "";
										var bool = false;
										var count = 0;
										//获取所有的复选框对象集合
										var checkboxarry = $('.checkBoxs');
										//循环集合
										for (var i = 0; i < checkboxarry.length; i++) {
											//判断其中哪些复选框为选中状态
											if ($(checkboxarry[i]).is(':checked')) {
												bool = true;
												//找到选中状态的父节点(td) 再找td的父节点(tr)	
												var trobj = $(checkboxarry[i]).parent()
														.parent();
												//获取选中状态行的隐藏域的值
												hiddenn = hiddenn
														+ $(checkboxarry[i]).next()
																.val() + ",";
												//将tr对象进行删除
												trobj.remove();
												zongjimethod();
												choosecount();
												checktotalmoney();
												
												count = count + 1;
												$('#checkBoxId').attr("checked", false)
											} else if (count == 0
													&& i == checkboxarry.length - 1) {
												alert("请至少选择一条数据进行操作");
											};
										}
										
								
										if (bool) {
											$.ajax({
												type : "POST",
												url : "orders.action?method=userDelectorders",
												data : 
													{
													orderId: hiddenn
												
													},
													
													
											/*  success: function(msg){
											   alert( "Data Saved: " + msg );
											 } */
											});
										}
										if (count != 0) {
											$('#checkBoxId').attr("checked", false)
										}
									})
					//获取清空购物车对象
					$('#cleancar').click(
							function() {
								if (confirm("确认清空购物车吗？")) {
									//获取所有隐藏域的值
									var hiddenn = $("[name=hden]");
									var hid ="";
									for (var i = 0; i < hiddenn.length; i++) {
										hid=hid+$(hiddenn[i]).val()+","
									}
									$.ajax({
										type : "POST",
										url : "orders.action?method=userDelectorders",
										data : {
											orderId:hid
										},
									/*  success: function(msg){
									   alert( "Data Saved: " + msg );
									 } */
									});
									$('#tablebody').remove();
									choosecount();
									checktotalmoney();
									
									zongjimethod();
									$('#checkBoxId').attr("checked", false);
								}
							})
					//选项卡面板标头添加事件
					$('#myTab li').mousemove(function() {
						$('#myTab li').removeClass("active");
						$('#myTab li').children().css({
							"border-top" : "none"
						});
						$(this).children().css({
							"border-top" : "2px solid red"
						});
						$(this).addClass("active");
						var divid = $(this).children().attr("ref");
						$(".tab-pane").removeClass("fade in active");
						$(divid).addClass("fade in active");
					});
					//选项面板向前切换切换
					function qianqieHuan(obj) {
						var div = $(this).parent().parent().next().children();
						if (div.length > 4) {
							var maxNumber = div.length - 1;
							var sss = $(div[maxNumber]).html();
							/*$(div[7]).html($(div[6]).html());
							$(div[6]).html($(div[5]).html());
							$(div[5]).html($(div[4]).html());
							$(div[4]).html($(div[3]).html());
							$(div[3]).html($(div[2]).html());
							$(div[2]).html($(div[1]).html());
							$(div[1]).html($(div[0]).html());
							$(div[0]).html(sss);*/
							for (maxNumber; maxNumber >= 0; maxNumber--) {
								if (maxNumber > 0) {
									$(div[maxNumber]).html($(div[maxNumber - 1]).html());
								} else {
									$(div[maxNumber]).html(sss)
								}
							}
						}
					}
					//选项面板向后切换切换
					function houqieHuan(obj) {
						var div = $(this).parent().parent().prev().children();
						if (div.length > 4) {
							var sss = $(div[0]).html();
							/*$(div[0]).html($(div[1]).html());
							$(div[1]).html($(div[2]).html());
							$(div[2]).html($(div[3]).html());
							$(div[3]).html($(div[4]).html());
							$(div[4]).html($(div[5]).html());
							$(div[5]).html($(div[6]).html());
							$(div[6]).html($(div[7]).html());
							$(div[7]).html(sss);*/
							for (var i = 0; i < div.length; i++) {
								if (i < div.length - 1) {
									$(div[i]).html($(div[i + 1]).html());
								} else {
									$(div[i]).html(sss);
								}
							}
						}
					}
					//猜你喜欢里面的向前和向后切换
					$('.likeimg').click(qianqieHuan);
					$('.likeimgtwo').click(houqieHuan);
					//热门推荐里面的向前和向后切换
					$('.remenimg').click(qianqieHuan);
					$('.remenimgtwo').click(houqieHuan);
					//最近浏览里面的向前和向后切换
					$('.zuijinimg').click(qianqieHuan);
					$('.zuijinimgtwo').click(houqieHuan);
				}
			});
		};
		loadLbtData();
		function getQueryString(name) {
		    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
		    var r = window.location.search.substr(1).match(reg);
		    if (r != null) return decodeURI(r[2]); return null;
		}
		
		//加入购物车
		var toadd = function(){
			var uid = getQueryString('uid');
			if(uid == "*"){
				window.location.href = "login.jsp";
			}
			else{
				window.location.href = "myshopcart.action?method=addcart&uid="+uid+"";
			}
		}
	</script>


</body>
</html>