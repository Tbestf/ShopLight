<%@ page language="java" import="java.util.*,com.light.pojo.Users" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String user = (String)session.getAttribute("un");
	String uid = (String) session.getAttribute("uid");
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>header</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/index_zmj.css">
</head>

<body>
	<header>
		<div id="top-bar">
			<div class="container-cust">
				<div class="col-md-6 col-sm-6 col-xs-6 top-bar-content">
					<span style="font-size:12px;">您好，欢迎光临波波商城!</span>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6 text-right top-bar-content">
					<% if(user != null ) { %>
						<a href="personal.jsp?uid=<%=uid%>" class="top-bar-4" style="font-size:12px;"><span class="glyphicon glyphicon-user" ></span> 个人中心</a> 
						<a href="peoplexx.jsp?uid=<%=uid%>" class="top-bar-2" style="font-size:12px;"><%=user%></a>
					<%}else{%>
						<a href="register.jsp" class="top-bar-4" style="font-size:12px;">免费注册</a> 				
						<a href="login.jsp" class="top-bar-2" style="font-size:12px;">登录</a>
					<%}%>
						<% if(user != null) { %>
					<a href="login.action?method=exit" class="top-bar-2" style="font-size:12px;">退出</a>
					<%}%>
				</div>
			</div>
		</div>
		<div id="mid-header" style="background-color: white;">
			<div class="container-cust">
				<div class="row">
					<div class="col-md-3 col-sm-3 col-xs-3 mid-header-content">
						<a href=""><img src="images/zmj/logo.png" alt="logo"></a>
					</div>
					<div id="search"
						class="col-md-6 col-sm-6 col-xs-6 mid-header-content">
						<div class="input-group">
							<input value="" id="search-key" type="text" class="form-control" placeholder="请输入关键字">
							<span class="input-group-btn">
								<a href="javascript:toSearch();">
									<button id="search-btn" class="btn btn-danger">搜索</button>				
								</a>
							</span>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3 mid-header-content"></div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-inverse" style="margin: 0; border: 0px;">
		</nav>
	</header>

	<!--导航菜单-->
	<script type="text/javascript" src="js/jquery-2.2.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/header_zmj.js" charset="utf-8"></script>
    <script type="text/javascript">
    	var toSearch = function(){
    		window.location.href = "light.action?method=selectDLight&d=" + document.getElementById('search-key').value;
    	}
    </script>
</body>
</html>
