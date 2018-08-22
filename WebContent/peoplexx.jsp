<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
String uid = (String) session.getAttribute("uid");
%> 
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>个人资料</title>

<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/css_yefei/comment_main.css" rel="stylesheet" charset="gb2312">
<link href="css/css_yefei/common.css" type="text/css" rel="stylesheet"/>
<link href="css/css_yefei/order.css" type="text/css" rel="stylesheet" charset="gb2312"/>
</head>
<body>
		<jsp:include page="header.jsp"></jsp:include>
	
		<!--右侧侧边栏 删除-->
		
		<!-- 个人中心开始 -->
    
	<div class="container" style="width: 980px; background-color: #eeeeee;">
		<div class="container1">
			您当前所在的位置:
			 <a href="personal.jsp?uid=<%=uid%>">用户中心</a> > 
			 <a href="peoplexx.jsp?uid=<%=uid%>">个人资料</a>
		</div>
		
		<div class="row">
			<!-- 左侧边栏 -->
			<!-- 左侧边栏   2018/4/18 更换 -->
			<jsp:include page="leftSideSidebar.jsp"></jsp:include>	<!-- 个人中心主页 -->

				<!-- 个人中心主页 -->
				<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
					<div class="personal_orders personal_data_aside">
						
					
						<div class="liangbing_addSize_div"  style="margin: 0px 0px 0px 40px;height: 910px;">
        					<table class="bingotable"  id="tablebody" style="height:400px;text-align: letf;border: 2px solid #D3D3D3; font-size: 100px; " >
        					       
							<script type="text/html" id="mscList-template">
						     {{each msc}}
								<tr>
									<td style="width: 10%">用户名：</td>
									<td>{{$value.loginId}}</td>
								</tr>
								<tr>
									<td> 昵称：</td>
									<td>{{$value.userName}}</td>
								</tr>
								<tr>
									<td> 性别：</td>
									<td>{{$value.gender}}</td>
								</tr>
								<td> 邮箱：</td>
									<td>{{$value.postalCode}}</td>
								</tr>
								<tr>
								<td> 手机：</td>
									<td>{{$value.phone}}</td>
								</tr>
								
								<tr>
								<td> 邮编：</td>
									<td>{{$value.email}}</td>
								</tr>
                                    <tr data-toggle="distpicker">
								<td> 地址：</td>
									<td>{{$value.address}}</td>

								</tr>
								<tr>
									<td></td>
									<td>
										<button type="button" class="btn btn-primary"
											data-toggle="button"onclick="window.location='personal_data.jsp?uid=<%=uid%>'">修改信息</button>
									</td>
								</tr>
                          		{{/each}}
                          </script>
								</table>
								
						
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="js/js_yefei/bootstrap.min.js"></script>
<script type="text/javascript" src="js/js_yefei/tab.js"></script>
<script type="text/javascript" src="js/template-web.js"></script>
<script type="javascript/text" src="js/bootstrap.js"></script>
<script src="js/js-xsx/jquery-1.8.3.js" type="text/javascript"></script>
<script type="text/javascript" src="js/twt/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/twt/bootstrap.min.js"></script>
<script type="text/javascript" src="js/twt/distpicker.data.js"></script>
<script type="text/javascript" src="js/twt/distpicker.js"></script>
<script type="text/javascript" src="js/twt/main.js"></script>



			
<script>
function getQueryString(name) {
    var result = window.location.search.match(new RegExp("[\?\&]" + name + "=([^\&]+)", "i"));
    if (result == null || result.length < 1) {
        return "";
    }
    return result[1];
}
   var loadLbtData = function() {

			var str = getQueryString("uid");
			$.ajax({
				type : "POST",
				url : "message.action?method=selectusers",
				data : {
 					uid : str
				},
				success : function(json) {
					var data = eval("(" + json + ")");
					var html = template('mscList-template', {
						msc : data
					});
					$('#tablebody').html(html);

			    console.log(data);
				}
			});
			
			 
		};
		loadLbtData();
	</script>

</body>
</html>