<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/index_zmj.css">
<link rel="stylesheet" href="css/cf/login.css">
<style>
.personal_data_wenbenkuang {
	height: 30px;
	width: 246px;
	display: inline;
}
</style>
<title>波波商城登录口</title>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="widows: 1024px;">
		<div id="bodyid" class="bodydiv" style="width: 100%;">
		
			<form action="login.action?method=selectloginPwd" method="post">
				<div class="shoediv"></div>

				<div class="logindiv">
					<div style="margin: 40px 40px">
						<b style="font-size: 18px">账号登陆</b>
						<div>
							<div class="textdiv">
								<div class="" style="height: 40px;">
									<img style="float: left;  margin-top: 20px;"src="images/cf/text.png"></img>
									 <input type="text"  name="username" style="float: left; width: 250px; margin-top: 20px;"
									class="form-control input-lg" placeholder="用户名">
								</div>

							</div>
							<div id="userNameId" style="height: 18px; padding: 0px 0px 32px 0px;"></div>
								

							<div>
								<div class="" style="height: 40px;">
									<img style="float: left;  margin-top: 20px;" 	src="images/cf/password.png"></img>
									 <input type="password"  name="password" style="float: left; width: 250px;" class="form-control input-lg" placeholder="密码">
								</div>

							</div>
						</div>

						<input type="image" src="images/cf/login.png" style="margin: 20px 0 0 0;"></input>
						<br/>
						<a href="register.jsp">免费注册</a>
					</div>
				</div>
			</form>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
