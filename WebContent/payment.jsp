<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<% String uid = (String) session.getAttribute("uid"); %>
<html>

<head>
    <title>订单提交成功</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/wsh/font-awesome.min.css" rel="stylesheet">
    <link href="css/wsh/animate.min.css" rel="stylesheet">
    <link href="css/wsh/main.css" rel="stylesheet">
    <link href="css/wsh/responsive.css" rel="stylesheet">
    <link href="css/wsh/wushaohong.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/index_zmj.css">
    <link href="css/css_liuzhidan/personal_main.css" rel="stylesheet">
    <script src="js/wsh/jquery.js"></script>
    <script src="js/wsh/mtjsencrypt.min.js"></script>
</head class="homepage">

<body>
<header>
   	<jsp:include page="header.jsp"></jsp:include>
</header>
<!--header-->
<div class="container-cust" style="padding: 0px">
    <div id="all-category-content"> </div>
</div>
<!--全部分类-->
<!--导航菜单-->

<!-- 中部-->
<div class="container" style="width: 1024px;">
    <div class="container" style="width: 810px;">
        <h4 style="color: red">订单提交成功！请您尽快付款，我们将尽快为您送达！</h3>
    </div>
    <div class="container">
        <div style="padding-bottom: 50px;padding-left: 90px;" class="col-md-6";>
            <h5>请在24小时内完成支付，否则订单会被自动取消。</h5>
            <h3>配送信息</h3>
            <div id="zx">
            <script type="text/html" id="zxList-template">
 				{{each zx}}
  					 <b><li>收货人:</b>&nbsp{{$value.userName}}</li>
           			 <br>
           			 <b><li>配送地址:</b>&nbsp{{$value.address}}</li>
           			 <br>
           			 <b><li>配送方式:</b>&nbsp快递</li>
            		 <br>
            		 <b><li>联系方式:</b>&nbsp{{$value.phone}}</li>
           			 <br>
           			 </b>
            		 <b><li>备注信息:</b>&nbsp尽快送达</li>	
  				{{/each}}
			</script>
            </div>
            <div style="margin-top:25px;padding-left: 0px;width: 780px;" class="container">
                <h4>支付方式:微信</h4>
                <h4>在线支付：</h4>
                <img src="images/wsh/pay_wechat.png">
            </div>
            <form id="form" action="http://www.itppay.com/newsdk/api/v1.0/cli/order_pc/0" method="post">
                <input type="hidden" id="orderInfo" name="orderInfo" value="">
            </form>
            <div class="col-md-offset-0" style="margin-top:35px;margin-bottom:5px;">
                <a href="pay_success.jsp?uid=<%=uid%>" class="immediate_pay"><img src="images/wsh/zhifu.png"></a>
                <!--  <a href="javascript:submit();" class="immediate_pay"><img src="images/wsh/zhifu.png"></a> -->
            </div>
        </div>
        <div style="background-color:;border:solid 5px #D6D1D1;margin-bottom: 55px;" class="col-md-4">
            <div style="background-color:#D6D1D1" class="row">
                <h3 style="display:inline"><span style="color: #000000;padding-left: 3px;">订单摘要</span></h3></div>
            <div style="margin-top:15px;" class="row"><b><div class="col-md-6" style="
    padding-top: 10px;">订单编号</div><div class="col-md-6" id="mchntOrderNo" style="text-align: right;"><span id="scid" style="font-size:20px;"></span></div></b>
            </div>
            <hr "" />
            <div style="margin-top:-15px;" class="row"><b><div class="col-md-6"style="
    padding-top: 10px;">商品数量:</div><div class="col-md-6" style="text-align: right;"><span id="amount" style="font-size:20px;"></span></div></b>
            </div>
            <hr/>
            <div style="margin-top:-15px;" class="row"><b><div class="col-md-6"style="
    padding-top: 10px;">运费:</div><div class="col-md-6" style="text-align: right;"><span style="font-size:20px;">￥0</span></div></b>
            </div>
            <hr/>
            <div style="margin-top:-15px;" class="row"><b><div class="col-md-6"style="
    padding-top: 10px;">商品总额:</div><div class="col-md-6" style="text-align: right;font-size:20px;">￥<span id="ttp" style="font-size:20px;"></span></div></b>
            </div>
            <hr> 商品信息
            <div id="zx2" style="padding-top: 15px;" class="row">
                <script type="text/html" id="zx2List-template">
 				{{each zx2}}
					{{if $index < 1}}
               		 <div class="col-md-4">
                    	<img style="width:100px;height:100px;" src="{{$value.images}}">
               		 </div>
              	     <div class="col-md-4">
                     <div style="width:180px;" id="body">{{$value.description}}</div>
                     <div>颜色:&nbsp&nbsp{{$value.color}}</div>
                	 </div>
					 {{/if}}
                {{/each}}
				</script>
            </div>
        </div>
    </div>
</div>
<!-- 底部开始 -->
<footer id="footer">
   <jsp:include page="footer.jsp"></jsp:include>
</footer>
<script>
		var loadData = function(){
			var uid = getQueryString('uid');
			$.ajax({
				type : "POST",
				url : "message.action?method=selectusers",
				data : {
					uid : uid
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
				url : "orders.action?method=selectmyorders",
				data : {
					userId : uid
				},
				success : function(json) {
					var data = eval("(" + json + ")");
					$('#scid').html(data[0].orderId);
					$('#amount').html(data[0].buyQuantity);
					$('#ttp').html(data[0].totalPrice);
					var html = template('zx2List-template', {
						zx2 : data
					});
					$('#zx2').html(html);
				}	
			});
		}
		loadData2();
		var loadData3 = function(){
			var uid = getQueryString('uid');
			$.ajax({
				type : "POST",
				url : "orders.action?method=updateOrder",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
				data : {
					userId : uid
				},	
			});
		}
		loadData3();
		function getQueryString(name) {
		    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
		    var r = window.location.search.substr(1).match(reg);
		    if (r != null) return decodeURI(r[2]); return null;
		}
</script>

<script type="text/javascript" src="js/jquery-2.2.1.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>
<script type="text/javascript" src="js/index_zmj.js"></script>
</body>
<script src="js/wsh/pay.js" type="text/javascript"></script>

</html>

