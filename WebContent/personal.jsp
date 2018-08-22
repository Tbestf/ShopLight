<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%String uid = (String) session.getAttribute("uid"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/index_zmj.css">
<link href="css/css_liuzhidan/personal_main.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 个人中心开始 -->
    
	<div class="container" style="width: 980px; background-color: #eeeeee;">
		<div class="container1">
			您当前所在的位置:
			 <span>用户中心</span> > 
			 <a href="personal.jsp?uid=<%=uid%>">个人中心</a>
		</div>
		
		<div class="row">
			<!-- 左侧边栏 -->
			<jsp:include page="leftSideSidebar.jsp"></jsp:include>

			<!-- 个人中心主页 -->
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
				<div class="personal_outline">
					<img class="img-circle" src="images/images_liuzhidan/userImgLogo.png" style="display: block;margin-left: 60px; margin-top: 25px; float: left;"/>
					<div class="outline_member">
						<img  src="images/images_liuzhidan/userVerLogImg.png">普通会员<br>
						<span>账户安全：</span><span style="color: green;">安全</span><br>
					</div>
				</div>
				<div class="personal_orders">
					<div class="my_order">
						<div class="my_order1"><span style="font-size: 25px;">我的订单</span></div>
						<div class="my_order2"><a href="order_manage.jsp?uid=<%=uid%>">查看全部订单>></a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>