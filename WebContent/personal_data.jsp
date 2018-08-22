<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	String uid = (String) session.getAttribute("uid");
	String un = (String) session.getAttribute("un");
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>个人信息</title>
<link href="css/css_liuzhidan/personal_main.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/twt/personal_data.css"/>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container-cust" style="padding: 0px">
		<div id="all-category-content"></div>
	</div>
	<!--全部分类-->

	<!--导航菜单-->
	<!--右侧侧边栏-->
	<!--轮播器-->

	<!-- 个人中心开始 -->

	<div class="container" style="width: 980px; background-color: #eeeeee;">
		<div class="container1">
			您当前所在的位置: <a href="personal.jsp?uid=<%=uid%>">用户中心</a> > <a href="peoplexx.jsp?uid=<%=uid%>">个人资料</a>
		</div>

		<div class="row">
		<jsp:include page="leftSideSidebar.jsp"></jsp:include>

			<!-- 个人中心主页 -->
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
				<div class="personal_orders personal_data_aside">
					<div style="margin-top: 25px;">
						<ul style="list-style: none;">
							<li style="list-style: none;">请完善您的个人信息，本公司官网将对您的信息加以保密。 </li>
						</ul>
						<form  id="handleform"role="form" class="form-horizontal personal_data_form">
							<table>
								<tr>
									<td style="width: 10%">用户名：</td>
									<td><%=un%></td>
								</tr>
								<tr>
									<td><span class="personal_date_red">*</span> 昵称：</td>
									<td><input type="text" name="userName"
										class="form-control" style="height:30px;width:246px;display:inline;" id="nickname"
										placeholder="请输入昵称" /> <span id="nicknameTishi"></span></td>
								</tr>
								<tr>
									<td><span class="personal_date_red">*</span> 性别：</td>
									<td><input type="radio" name="optionsRadios"
										id="optionsRadios1" value="男" checked> 男&nbsp; <input
										type="radio" name="optionsRadios" id="optionsRadios2"
										value="女"> 女</td>
								</tr>
								<tr>
									<td><span class="personal_date_red">*</span> 邮箱：</td>
									<td><input type="text" name="email"
										class="form-control" style="height:30px;width:246px;display:inline;" id="Emailsz"
										placeholder="请输入您的邮箱" /> <span id="EmailszTishi"></span>
									</td>
								</tr>
								<tr >
									<td><span class="personal_date_red">*</span> 地址：</td>
									<td><input type="text" class="form-control" name="address"
										style="height: 40px; width: 500px; display: inline;"
										placeholder="请输入您的详细地址" /></td>
								</tr>
								<tr>
									<td><span class="personal_date_red">*</span> 邮编：</td>
									<td><input type="text"name="postalCode"
										class="form-control" id="youbian" style="height:30px;width:246px;display:inline;"
										placeholder="请输入收货人所在邮编" /> <span id="youbianTishi"></span></td>
								</tr>
								<tr>
									<td></td>
									<td>
										<button type="submit" class="btn btn-primary"
											data-toggle="button" onclick="saveButton()">保存修改</button>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">

 function saveButton(){
   //通过ajax异步将数据发送给action层      $(".form-group").serialize(),$("#handleform").serialize(),
   var uid = getQueryString('uid'); 
   console.log(uid);
   $.ajax({
	    type : 'POST', //提交方式
    	url : "message.action?method=updateusers",//这里写上你的action路径
    	data :
    		$("#handleform").serialize(),
   });
	  window.location.href = "peoplexx.jsp?uid=" + uid;
 }
 function getQueryString(name) {
	    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");   
	    var r = window.location.search.substr(1).match(reg);   
	    if (r != null) return decodeURI(r[2]); return null;   
	}
</script>

	<jsp:include page="footer.jsp"></jsp:include>

	<script type="text/javascript" src="js/twt/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/twt/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/twt/distpicker.data.js"></script>
	<script type="text/javascript" src="js/twt/distpicker.js"></script>
	<script type="text/javascript" src="js/twt/main.js"></script>
	<script type="text/javascript" src="js/twt/warn.js"></script><!--点击文本框提示框Js文件-->
</body>
</html>
