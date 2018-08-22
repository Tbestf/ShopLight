<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script type="javascript/text" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>
<script src="js/js-xsx/jquery-1.8.3.js" type="text/javascript"></script>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px
}
.topdiv {
	width: 100%;
	height: 150px;
}
.topdivone {
	background: #ddd;
	width: 100%;
	height: 30px;
}
#top-bar {
	height: 30px;
	width: 1024px;
	margin: 0px auto;
	background: #ddd;
}
.top-bar-content {
	height: 30px;
	line-height: 30px;
}
.top-bar-content a {
	text-decoration: none;
	color: #222;
	transition: color 0.4s;
}
.top-bar-content a:hover {
	color: #C1121D;
}
.topdivtwo {
	width: 100%;
	height: 120px;
	background-color: #ffffff;
}
.alldiv {
	width: 1024px;
	height: auto;
	margin: 0px auto;
}
.alldivone {
	width: 100%;
	height: 60px;
	margin: 0px auto
}
.alldivtwo {
	width: 980px;
	margin: 0px auto;
	background-color: #ffffff
}
#tableid tbody td {
	line-height: 70px
}
.alldivthree {
	width: 980px;
	height: 100px;
	margin: 0px auto;
	background-color: #ffffff
}
#secondTable {
	margin-bottom: 10px;
	margin-top: 10px;
	margin-left: 10px;
}
#secondTable td {
	width: 150px;
}
.lili {
	color: red;
}
.container-cust {
	width: 1024px;
	margin: 0 auto;
}
</style>
</head>
<body style="margin: 0px auto; background-color: #f2f2f2">
	<!--头部样式-->
	<jsp:include page="header.jsp"></jsp:include>
	<div class="alldiv">
		<div class="alldivone">
			<input type="button" class="btn btn-danger btn-sm" value="我的购物车" style="margin-top: 14px; float: left; margin-left: 22px" />
			<div style="background-color: #ffffeb; padding: 4px; margin-top: 14px; float: left; margin-left: 10px">温馨提示:选购商品请及时结算,不保留库存:商品价格,相关活动信息及库存以订单为准</div>
		</div>
		<!--第一个表格-->
		<div class="alldivtwo">
			<table id="tableid" class="table">
				<!--table-striped斑马线样式,tbody的行添加样式每隔一行有颜色 table-bordered添加边框-->
				<!--表头标签(表格标题)-->
				<thead>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input id="checkBoxId" type="checkbox" />全选</td>
					<td style="text-align: center">商品信息</td>
					<td style="text-align: center">单价(元)</td>
					<td style="text-align: center">数量</td>
					<td style="text-align: center; width: 100px">库存量</td>
					<td style="text-align: center; width: 100px">小计</td>
					<td style="text-align: center">操作</td>
				</thead>
				<!--表体标签-->
				<tbody id="tablebody">
					<script type="text/html" id="mscList-template">
						{{each msc}}
	   						<tr id="trrrrr">		
					    		<td>&nbsp&nbsp&nbsp&nbsp<input class="checkBoxs" type="checkbox"/><input type="hidden" name="hden" value="{{$value.shopCartId}}"/></td>
	    						<td style="width:290px">
	   								<dl>
										<dt><div style="float:left;width:82px;height:69px"><a href=""><img src="{{$value.images}}" style="width:82px;height:69px"/></a></div></dt>
		  							 	<dd>
										 <span>{{$value.description}}</span>
										 <span name = "id">{{$value.lightId}}</span><br>
										 <span>颜色:{{$value.color}}&nbsp&nbsp&nbsp&nbsp放置位置:{{$value.locate}}</span>
		  								</dd>
	  								</dl>
       							</td>
	  							<td style="text-align:center">￥<span name="danjia">{{$value.price}}</span></td>
								<td style="text-align:center">
									<input name="count" value="{{$value.number}}" type="text" disabled="true" class="form-control" style="width:50px;height:24px;background-color:#ffffff;text-align:center;display:inline">
	  							<td name="jifeng1" style="text-align:center">{{$value.quantity}}</td>
	  							<td name="smallCount" style="text-align:center;color:red">￥<span name="scount">{{$value.price}}</span>(元)</td>
	  							<td style="text-align:center"><span class="delete" style="Cursor:pointer">删除</span></td>
							</tr>
						{{/each}}
					</script>
				</tbody>
			</table>
		</div>
	</div>
	<!--第二个表格-->
	<div style="width: 100%; margin: 0px auto; margin-top: 25px;">
		<div class="alldivthree" style="padding-top: 5px">
			<table id="secondTable">
				<tr>
					<td><span id="allchoose" style="color: blue; Cursor: pointer;">&nbsp&nbsp&nbsp全选</span></td>
					<td style="text-align: center"><span id="alldelete" style="color: blue; Cursor: pointer">删除所选商品</span></td>
					<td style="text-align: center"><span id="cleancar" style="color: blue; Cursor: pointer">清空购物车</span></td>
					<td style="text-align: center"></td>
					<td style="text-align: center"></td>
					<td style="text-align: center">购买商品数量:<span id="score1" style="color: red">0</span></td>
					<td style="text-align: center">+ <span id="totalmoney">0</span></td>
				</tr>
			</table>
			<div style="width: 500px; height: 60px; float: right">
				<p style="float: left">
					<font color="#656565">已选<span style="color: red" id="choosecount">0</span>件商品
					</font>&nbsp&nbsp&nbsp&nbsp商品总价(不含运费):<font color="red" size="6px">￥<span id="checktotalmoney">0</span></font>
				</p>
				<input type="button" class="btn btn-danger btn-sm" Onclick="jisuan()" value="去结算" style="float: right; margin-top: 10px; margin-right: 40px">
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		var loadLbtData = function() {
			var uid = getQueryString('uid');
			$.ajax({
				type : "POST",
				url : "myshopcart.action?method=selectMyShopCart",
				data : {
					uid : uid
				},
				success : function(json) {
					var data = eval("(" + json + ")");
					var html = template('mscList-template', {
						msc : data
					});
					$('#tablebody').html(html);
					//获取所有小计的对象
					var xiaojiObj = $("[name=scount]");
					//获取所有单价的对象
					var danjiaObj = $("[name=danjia]");
					//获取所有数量的对象
					var countObj = $("[name=count]");
					for (var i = 0; i < xiaojiObj.length; i++) {
						$(xiaojiObj[i]).text(
								$(danjiaObj[i]).text() * $(countObj[i]).val());
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
								var jifengobj = $(checkboxarry[i]).parents("tr").find("[name=count]").val();
								count = Number(count) + Number(jifengobj);
							}
						}
						$('#score1').text(count);
					}
					//获取选中状态下的总积分公共方法
					function checktotalmoney() {
						var checkboxarry = $('.checkBoxs');
						var count = 0;
						for (var i = 0; i < checkboxarry.length; i++) {
							//判断哪些复选框为选中状态
							if ($(checkboxarry[i]).is(':checked')) {
								console.log("有选中");
								//将选中状态下的那一行信息的小计对象提取出来
								var xiaojiobj = $(checkboxarry[i]).parents("tr").find(
										"[name=scount]");
								console.log(xiaojiobj.text());
								count = Number(count) + Number(xiaojiobj.text());
							}

						}
						$('#checktotalmoney').text(count);
					}

					//获取选中状态下的个数公共方法
					function choosecount() {
						var checkboxarry = $('.checkBoxs');
						var count = 0;
						for (var i = 0; i < checkboxarry.length; i++) {
							//判断哪些复选框为选中状态
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
					//获取数量减少按钮的对象集合添加事件对数量进行减少
					$('[name=jianShao]').click(
							function() {
								var shuliang = $(this).next().val();
								if (shuliang <= 1) {
									confirm("数量不能小于1");
								} else {
									$(this).next().val(shuliang - 1);
									var countt = $(this).next().val();
									xiaojimethod(this);
									jifengmethod(this);
									zongjimethod();
									checktotalmoney();
									checktotalscore();
								}
							})
						//获取数量增加按钮的对象集合添加事件对数量进行增加
						$('[name=znegJia]').click(function(){
								var shuliang=$(this).prev().val();
								var shul=$(this).parents("tr").find("[name=jifeng1]").text()-1;
								
								if(shuliang>shul){
									confirm("数量不能大于库存量");
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
					//获取全选框对象 并添加点击事件
					$('#checkBoxId').click(function() {
						//判断该复选框是否为选中状态
						var panduan = $(this).is(':checked');
						if (panduan) {
							$('.checkBoxs').attr("checked", true);
							choosecount();
							checktotalmoney();
							checktotalscore();
						} else {
							$('.checkBoxs').attr("checked", false);
							choosecount();
							checktotalmoney();
							checktotalscore();
						}
					});
					//获取所有复选框对象 并添加事件
					$('.checkBoxs').click(function() {
						choosecount();
						checktotalmoney();
						checktotalscore();
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
								var hiddenn = $(this).parents("tr").find("[name=hden]").val();
//   							alert( "Data Saved: " + hiddenn );
								$.ajax({
									type : "POST",
									url : "myshopcart.action?method=deleteMyShopCart",
									data : {
										shopCartId : hiddenn
									}
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
												checktotalscore();
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
												url : "myshopcart.action?method=deleteAllMyShopCart",
												data : {
													shopCartId: hiddenn
												}
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
									$.ajax({
										type : "POST",
										url : "myshopcart.action?method=CleanMyShopCart",
										data : {
											uid : uid,
										}
									/*  success: function(msg){
									   alert( "Data Saved: " + msg );
									 } */
									});
									$('#tablebody').remove();
									choosecount();
									checktotalmoney();
									checktotalscore();
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
		 function jisuan(){
			 var uid = getQueryString('uid');
			 var bool = false;
			 var checkboxarry = $('.checkBoxs');
				//循环集合
				for (var i = 0; i < checkboxarry.length; i++) {
					//判断其中哪些复选框为选中状态
					if ($(checkboxarry[i]).is(':checked')) {
						bool = true;
						var trobj = $(checkboxarry[i]).parent()
						.parent();
						//获取选中状态行的隐藏域的值
						if(bool = true){
							var hiddenn = $(checkboxarry[i]).next().val();
							var lightId = $(checkboxarry[i]).parents("tr").find("[name=id]").text();
							var buyQuantity = $(checkboxarry[i]).parents("tr").find("[name=count]").val();
							var totalPrice = $(checkboxarry[i]).parents("tr").find("[name=scount]").text();
							$.ajax({
								type : "POST",
								url : "myshopcart.action?method=addorders",
								data : {
									userId : uid,
									lightId : lightId,
									buyQuantity : buyQuantity,
									totalPrice : totalPrice
								},
							});
							$.ajax({
								type : "POST",
								url : "myshopcart.action?method=deleteMyShopCart",
								data : {
									shopCartId : hiddenn
								},
							});
						}
						bool = false;
					}
				}
			 window.location.href = "order.jsp?uid=" + uid;
		 }
	</script>
</body>
</html>