<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>footer</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/index_zmj.css">
</head>

<body>
	<footer id="footer">
		<div class="container-cust">
			<div id="footer-right" class="col-md-4 col-sm-4 col-xs-4">
				<h4>联系波波商城</h4>
				<p><span class="glyphicon glyphicon-earphone"></span> 17876253445</p>
				<span>在线时间：周一至周五<br>(9:00-12:00 13:00-18:00)</span>
			</div>
		</div>
	</footer>
  </body>
</html>
