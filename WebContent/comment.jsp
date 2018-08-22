<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String uid = (String) session.getAttribute("uid");
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>comment</title>
<link href="css/css_yefei/comment_main.css" rel="stylesheet">
<link href="css/css_yefei/common.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
<!--导航菜单-->

<!--右侧侧边栏-->
<!--轮播器-->
    
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
				
				<div class="personal_orders">
					<div class="my_order">
						<div class="my_order1"><span style="font-size: 25px;"> 商品评价</span></div>
						<!-- <div class="my_order2"><input type="checkbox"> 全部匿名评论 &nbsp;</div> -->
					</div>

					<div class="order_info"> 
						<form class="totle">
						  <table class="one">
						    <tr class="<!-- biaocolor -->">
							  <td class="shangping">商品</td>
							</tr>
							<tr height="40px"><!--tr:4 换略图 标题，颜色，尺码,原价<span class="glyphicon glyphicon-picture"></span>-->
							  <td rowspan="3" class="shoppingimg">
							    <a href="#"><img class="img-rounded" src="images/images_yefei/banner.jpg" height="130" border="0" width="130">
							    </a><br/><br/>
							    <a href="#" >特步阳光系列<br>原价:325</a><br><lable class="shangpxq">颜色分类：红黑色;尺码:38码</lable><br>		
							  </td>
						    </tr>
							<!--文本域-->
							<tr>
							  <td colspan="4">
								<div class="form-group" style="text-align: left; background-color: #F0F6FD; border: 1px solid #E3E3E3; width:100%; height:100%; margin-bottom: 0px">
								  <textarea rows="6" style="resize: none;font-family: verdana; width: 100%; overflow-y: scroll" placeholder="亲，服务态度是否好，商品是否符合描述，售后服务是否到位？"></textarea>
								</div>
					 		  </td>
							</tr>
							<!-- <tr style="text-align: right">
							  <td colspan="4">
								<label class="checkbox-inline">
								  <input id="inlineCheckbox1" value="option1" type="checkbox">晒到个人主页
								</label>
								<label class="checkbox-inline">
								  <input id="inlineCheckbox2" value="option2" type="checkbox">匿名评价&nbsp;
								</label>
							  </td> -->
							</tr>
						  </table><!-- 表一：评论 -->

						  <table class="two">
						    <tr class="biaotitwo">
							  <td colspan="5">
							    <button type="button" class="btn btn-success">提交评论</button> 
							  </td>  
							</tr> 
						  </table><!-- 表二：评分 -->
						</form><!-- 表单 -->
					</div>
					<div style="clear: both;"></div>
				</div>
				
				
				
				
			</div><!--右侧栏-->
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="js/js_yefei/bootstrap.min.js"></script>
<script type="text/javascript" src="js/js_yefei/pinglun.js"></script>
<script type="text/javascript" src="js/js_yefei/imgUp.js" charset="gb2312"></script> 
</body>
</html>