<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>注册</title>
<link href="css/css_wenzhiwu/register.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 注册 -->
	<div id="register-mian"  class="center-block">
		<div id="register-left">
			<div id="register-header"><img src="images/images_wenzhiwu/personal_data_2.png">欢迎注册</div>
				<div id="main">
					<table style="width: 600px; border:0px;">
						
						<tr>
							<td class="content">
								<form action="userregister.action?method=userRegister" method="post">
									<input type="hidden" name="method" value="userRegister">
									<dl>
										<dt class="glyphicon glyphicon-star" style="margin-top: 20px;">手机：</dt>
										<dd style="width:206px;float: left;">
												<input  type="text" id="tel" name="pname" class="form-control" placeholder="请输入常见手机" />
																												
												<div style="width:306px;height: 20px;" id="telId"></div>
										</dd>										
										<!-- <dd id="telId"></dd> -->
									</dl>											
									<dl>
										<dt class="glyphicon glyphicon-star" style="margin-top:20px;">用户名：</dt>
										<dd>
											<input type="text" id="name" name="uname" class="form-control"
												placeholder="请填写登录账号" />
											<div style="width:306px;height: 20px;" id="nameId"></div>
										</dd>
									</dl>
									<dl>
										<dt class="glyphicon glyphicon-star" style="margin-top: 20px;">设置密码：</dt>
										<dd>
											<span></span><input type="password" id="pwd" name="uiPass" class="form-control required"
												placeholder="6-20个字符，建议由字母，数字组合" />
											<div style="width:306px;height: 20px;" id="pwdId"></div>
										</dd>
									</dl>
									<dl>
										<dt class="glyphicon glyphicon-star" style="margin-top: 20px;">确认密码：</dt>
										<dd>
											<input type="password" id="repwd"  class="form-control" placeholder="请再次输入密码"/>
											<div style="width:306px;height: 20px;" id="repwdId"></div>
										</dd>
									</dl>
									
									<dl>
										<dt></dt>
										<dd>
											<input type="checkbox">我已阅读并同意<a style="color: red">《服务条款》</a>
										</dd>
									</dl>
									<dl>
										<dt></dt>
										<dd>
											<input type="image" src="images/images_wenzhiwu/zhucedenglu.png" />
										</dd>
									</dl>
								</form>
							</td>
							<td></td>
						</tr>					
				</table>
				
			</div>	
		</div>
		
		<div id="register-right">
			<span style="float:left; width: 400px; margin-top: 150px;padding-left: 20px">已有账号</span>
	             
	            <span style="float:left; width: 400px; margin-top: 20px;padding-left: 20px">
	            <!--  <input name=" " type="image" src="images/images_wenzhiwu/lijidenglu.png" /> -->
	              <a name=" "  href="login.jsp" ><img  src="images/images_wenzhiwu/lijidenglu.png"> </a>
	            </span>

			</div>
		</div>	
	
	<jsp:include page="footer.jsp"></jsp:include>
	
	<script type="text/javascript" src="js/js_wenzhiwu/register.js"></script>
</body>
</html>
