<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="favicon.ico" >
<link rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script><![endif]-->
<!--/meta 作为公共模版分离出去-->

<title>会员列表 - 会员管理 - H-ui.admin v3.0</title>
<meta name="keywords" content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<!--_header 作为公共模版分离出去-->
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="/aboutHui.shtml"></a> <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="/aboutHui.shtml"></a> <span class="logo navbar-slogan f-l mr-10 hidden-xs"></span> <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
			
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
				<ul class="cl">
					<li>超级管理员</li>
					<li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A">admin <i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
							<li><a href="#">切换账户</a></li>
							<li><a href="#">退出</a></li>
						</ul>
					</li>
					<li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">1</span><i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a> </li>
					<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
							<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
							<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
							<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
							<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
							<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<!--/_header 作为公共模版分离出去-->

<!--_menu 作为公共模版分离出去-->
<<aside class="Hui-aside">
	
	<div class="menu_dropdown bk_2">
		
		
		<dl id="menu-product">
			<dt class="selected"><i class="Hui-iconfont">&#xe620;</i> 产品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd style="display: block;">
				<ul>
					<li><a href="product-brand.jsp" title="品牌管理">品牌管理</a></li>
					<li class="current"><a href="product-list.jsp" title="产品管理">产品管理</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-comments">
			<dt class="selected"><i class="Hui-iconfont">&#xe622;</i> 订单管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				 <ul>
					<li  class="current"><a href="orderslist.jsp" title="订单列表">订单列表</a></li>
	            </ul>
			</dd>
		</dl>
		<dl id="menu-member">
			<dt ><i class="Hui-iconfont">&#xe60d;</i> 会员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a href="member-list.jsp" title="会员列表">会员列表</a></li>
					<li><a href="member-del.jsp" title="删除的会员">删除的会员</a></li>
					
				</ul>
			</dd>
		</dl>
		
		
		
	</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<!--/_menu 作为公共模版分离出去-->

<section class="Hui-article-box">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户中心 <span class="c-gray en">&gt;</span> 会员列表<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="Hui-article">
		<article class="cl pd-20">
			<div class="mt-20">
				<table class="table table-border table-bordered table-hover table-bg table-sort">
					<thead>
						<tr class="text-c">
							<th width="20"><input name="" type="checkbox" value=""></th>
								<th width="60">订单号</th>
								<th width="60">品牌编号</th>
								<th width="60">购买数量</th>
								<th width="60">总价</th>
								<th width="60">下单日期</th>
								<th width="100">详细地址</th>
								<th width="60">邮政编码</th>
								<th width="60">收货人姓名</th>
								<th width="60">手机号码</th>
								<th width="60">订单状态 </th>
								<th width="100">操作</th>
						</tr>
					</thead>
					<tbody  id="tablebody">
					<script type="text/html" id="mscList-template">
					  {{each msc}}	
						<tr class="text-c">
							<td><input type="checkbox" value="1" name=""></td>
							<td>{{$value.orderId}}</td>
						    <td>{{$value.lightId}}</td>
                            <td>{{$value.buyQuantity}}</td>
							<td>{{$value.totalPrice}}</td>
							<td>{{$value.orderDate}}</td>
                            <td>{{$value.address}}</td>
							<td>{{$value.postalCode}}</td>
							<td>{{$value.receiveName}}</td>
							<td>{{$value.receivePhone}}</td>
							{{if  $value.orderStateId==0}}
								<td class="td-status"><span class="label label-defaunt radius">已删除</span></td>
                            {{else if  $value.orderStateId==1}}
								<td class="td-status"><span class="label label-success radius">待付款</span></td>
							{{else if  $value.orderStateId==2}}
								<td class="td-status"><span class="label label-success radius">待发货</span></td>
                            {{else if  $value.orderStateId==3}}
								<td class="td-status"><span class="label label-success radius">已发货</span></td> 
                            {{else if  $value.orderStateId==4}}
								<td class="td-status"><span class="label label-success radius">订单完成</span></td>
                            {{else if  $value.orderStateId==5}}
								<td class="td-status"><span class="label label-success radius">售后中</span></td>
                            {{else if  $value.orderStateId==6}}
								<td class="td-status"><span class="label label-success radius">售后完成</span></td>
                            {{/if}}
							<td class="td-manage"> 
                                 <a style="text-decoration:none" onClick="member_start(this,'{{$value.orderId}}','{{$value.orderStateId}}')" href="javascript:;" title="状态变更"><i class="Hui-iconfont">&#xe631;</i></a> 
                                 <a title="删除" href="javascript:;" onclick="member_del(this,'{{$value.orderId}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
                            </td>
						</tr>
                       {{/each}}
                          </script>
					</tbody>
				</table>
			</div>
		</article>
	</div>
</section>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js"></script>
<!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="js/js_yefei/bootstrap.min.js"></script>
<script type="text/javascript" src="js/js_yefei/tab.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>


<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
var loadData = function(){
	$.ajax({
		type : "POST",
		url : "orders.action?method=selectOrders",
		success : function(json) {
			
			var data = eval("(" + json + ")");
			var html = template('mscList-template', {
				msc : data
			});
			$('#tablebody').html(html);
		
			$('.table-sort').dataTable({
				"aaSorting": [[ 1, "desc" ]],//默认第几个排序
				"bStateSave": true,//状态保存
				"aoColumnDefs": [
				  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
				  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
				]
			});
			$('.table-sort tbody').on( 'click', 'tr', function () {
				if ( $(this).hasClass('selected') ) {
					$(this).removeClass('selected');
				}
				else {
					table.$('tr.selected').removeClass('selected');
					$(this).addClass('selected');
				}
			});
		
		}
    });	
}
loadData();
	
	/*订单状态-变更*/
	function member_start(obj,id,stateId){
	//	alert("+++"+stateId);
		layer.confirm('确认要变更吗？',function(index){
			$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,'+id+')" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe631;</i></a>');
			$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">更新成功</span>');
			$(obj).remove();
			layer.msg('更新成功!',{icon: 6,time:1000});
			$.ajax({
				type : "POST",
				url : "orders.action?method=UpdateOrderstateId",
				data : {
					orderId:id,
					ordertStateId:stateId
				},
				success : function(json) {
				
				}
		    });
		});
	}
	/*订单-删除*/
	function member_del(obj,orderId){
		layer.confirm('确认要删除吗？',function(index){
			$(obj).parents("tr").remove();
			layer.msg('已删除!',{icon:1,time:1000});
			
			$.ajax({
				type : "POST",
				url : "orders.action?method=deleteOrders",
				data : {
					orderId:orderId,
					
				},
				success : function(json) {
				}
		    });
			
		});
	}
	


</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>