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
		<title>首页</title>
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/index_zmj.css">
		<link rel="stylesheet" href="css/css_liuzhidan/personal_main.css" >
			<style>
				li{
					list-style:none;
				}
				a{
					color:#36c;
					cursor: pointer;
					text-decoration:none;
				}
				a:hover {
					color:#f60;
					text-decoration:underline;
				}
			</style>
	</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
		
		<!--右侧侧边栏 删除-->
		<div class="container" style="width: 1024px;">
			<div style="width: 100%;height: 65px;"></div>
			<div class="container"  style="width: 100%;height: 100%; background-color:#E4E4E4;">
				<div class="liangbing_div" style="width: 80%; margin: auto;padding: 20px 0px 0px;" >
					<div style="padding: 10px 0px 8px;">
						<img src="images/LB/OK.jpg" style="width: 50px ;height: 50px;float: left;"/>
						<div style="padding: 8px 0px 0px;">
							<h4 class="lianbing_li">您已成功付款</h4>
						</div>
					</div>
					<div>
						<div style="width: 94%; margin: auto;">
							<li>
								<a href="order_manage.jsp?uid=<%=uid%>";style="font-style:normal;font-size:12px;">交易详情</a>&nbsp;&nbsp;|&nbsp;&nbsp;
							</li>
							<br/>
							<li style="font-size:12px; padding: 0px 0px 35px 0px;">				
								<em style="font-style:normal;font-size:12px;color: #C46566;">正品保障 、7天无理由退换</em>
							</li>
							
						</div>
					</div>
				</div>
			</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<script type="text/javascript" src="js/jquery-2.2.1.js"></script> 
		<script type="text/javascript" src="js/bootstrap.js"></script> 
		<script type="text/javascript" src="js/index_zmj.js"></script>
	</body>
	<script>
	var loadData = function(){
		var uid = getQueryString('uid');
		$.ajax({
			type : "POST",
			url : "orders.action?method=updateOS",
			data : {
				userId : uid
			},
		});
	}
	loadData();
	function getQueryString(name) {
	    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	    var r = window.location.search.substr(1).match(reg);
	    if (r != null) return decodeURI(r[2]); return null;
	}
	</script>
</html>