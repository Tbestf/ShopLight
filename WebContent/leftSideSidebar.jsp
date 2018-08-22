<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%  String uid=(String) request.getSession().getAttribute("uid"); %>

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/index_zmj.css">
<link href="css/css_liuzhidan/personal_main.css" rel="stylesheet">
</head>
<body>
			<!-- 左侧边栏 -->
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<div class="personal_center">
					<img  src="images/images_liuzhidan/userLogo.png">&nbsp;
					<span class="num_style">0</span>
					<img  src="images/images_liuzhidan/mailLogo.png">
				</div>
				<ul>
					<li class="personal_trade">交易中心
						<ul>
							<li><a href="order_manage.jsp?uid=<%=uid%>">我的订单</a></li>
							<li><a href="service.jsp?uid=<%=uid%>">商品退换货</a></li>
						</ul>
					</li>
					<li class="personal_trade">设置
						<ul>
							<li><a href="peoplexx.jsp?uid=<%=uid%>">个人资料</a></li>
						</ul>
					</li>
				</ul>
			</div>
		
</body>
</html>