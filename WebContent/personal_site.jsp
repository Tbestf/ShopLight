<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	
		<title>个人中心</title>
		<!-- core CSS -->
	    <link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/index_zmj.css">
		<link href="css/css_liuzhidan/personal_main.css" rel="stylesheet">
		<link rel="stylesheet" href="css/LB/liangbing.css">
	</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
	
		<!--右侧侧边栏 删除-->
		
		<!-- 个人中心开始 -->
    
	<div class="container" style="width: 980px; background-color: #eeeeee;">
		<div class="container1">
			您当前所在的位置:
			 <a href="#">用户中心</a> > 
			 <a href="#">个人资料</a>
		</div>
		
		<div class="row">
			<!-- 左侧边栏 -->
			<jsp:include page="leftSideSidebar.jsp"></jsp:include>

				<!-- 个人中心主页 -->
				<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
					<div class="personal_orders personal_data_aside">
						<div class="personal_data_biaoti">
							<li style="list-style:none;font-size: 16px; margin: 20px 0px 0px 30px;" class="personal_data_biaoti_zhiti">
								<img src="images/LB/personal_data_2.png" class="personal_date_right3px" >
								地址管理
							</li>
						</div>
						<div style="width: 100%;height: 58px;margin: 0px 0px 0px 30px;">
							<h3 class="liangbing_addSize_h3"  >
								新增收货地址
							</h3>
							<li class="liangbing_addSize_li">
								电话号码、手机号码选填一项,其余均为必填
							</li>
						</div>
						<div class="liangbing_addSize_div"  style="margin: 0px 0px 0px 40px;">
							<form id="adduserForm">
								<table>
									<form  action="" method="post" style="font-weight: 500; ">
										<tr data-toggle="distpicker">
											<td class="liangbing_td1">所在地区<i style="color: red;font-style: normal;">*</i></td>
											<td class="liangbing_td2 form-group" style="font-family: 微软雅黑；">
												<select class="form-control" style="height:36px;width:162px;display:inline;" id="province1"></select>

												<select class="form-control" style="height:36px;width:182px;display:inline;" id="city1"></select>

												<select class="form-control" style="height:36px;width:140px;display:inline;" id="district1"></select>
												<div style="height: 10px;"></div>
											</td >
										</tr>
									 </form>
									<tr>
										 <td class="liangbing_td1"  valign="top" style="
		padding: 25px 5px 0px 0px;">详细地址<i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2">
											<textarea id="liangbing_size" style="resize: none;" rows="4" cols="48" placeholder="请您如实填写详细收货地址,例如:街道名称，门牌号码，楼层和房间号等信息"/></textarea>
											<div id="liangbing_size2"  style="height: 5px;"></div>
										</td>
									</tr>
									<tr>
										<td class="liangbing_td1">邮政编码  </td>
										<td class="liangbing_td2">
											<input type="text" class="easyui-validatebox liangbing_input" style="width:200px;" placeholder="如您不清楚邮递编号,请填写000000"/>
											<div style="height: 10px;"></div>
										</td>

									</tr>
									<tr>
										<td class="liangbing_td1" >收货人姓名  <i style="color: red;font-style: normal;">*</i></td>
										<td class="liangbing_td2">
											<input type="text" id="liangbing_name" class="easyui-validatebox  liangbing_input" placeholder="长度不超过25个字符" />
											<div id="liangbing_name2" style="height: 5px;"></div>
										</td>

									</tr>
									<tr>
										<td class="liangbing_td1">手机号码  </td>
										<td class="liangbing_td2">
											<input type="text" id="liangbing_mobilePhone" class="easyui-validatebox  liangbing_input" placeholder="手机、电话选填一项"/>
											<div id="liangbing_mobilePhone2" style="height: 5px;"></div>
										</td>

									</tr>
									<tr>
										<td class="liangbing_td1">电话号码  </td>
										<td class="liangbing_td2">
											<input id="liangbing_phone" type="text" class="easyui-validatebox  liangbing_input" style="width:68px;" placeholder="区号"/>
											-
											<input type="text" class="easyui-validatebox  liangbing_input" style="width:68px;" placeholder="电话号码"/>
											-
											<input type="text" class="easyui-validatebox  liangbing_input" style="width:68px;" placeholder="分机"/>
											<div id="liangbing_phone2" style="height: 5px;"></div>
										</td>

									</tr>
								</table>
								<li style="list-style:none;padding: 10px 0px 0px 90px;">
									<input type="checkbox">设置为默认收货地址</input>
								</li>
								<li style="list-style:none;padding: 10px 0px 0px 90px;">
									<input  type="button" style="width: 80px; height: 30px;"  value="保存信息" tabindex="3" />
								</li>
							</form>
						</div>
						<div style="padding: 65px 0px 40px 0px;">
							<li style="list-style:none;font-size: 12px;color:#F37F30;padding: 0px 0px 5px 2px;">以保存了4条地址，还能存16条地址</li>
							<table class="liangbing_table" id="liangbing_table">
								<tr style="background-color:#E8E3E3;">
									<td style="width: 70px;">收货人</td>
									<td style="width: 152px;">所在地区</td>
									<td style="width: 170px;">详细地址</td>
									<td style="width: 62px;">邮编</td>
									<td style="width: 130px;">电话/手机</td>
									<td style="width: 80px;">操作</td>
									<td style="width: 85px;"></td>
								</tr>
								<tr class="liangbing_tr">
									<td>梁秉</td>
									<td>湖南省 湘西自治州 保靖县</td>
									<td>迁陵镇xxxxxxxxxxxx</td>
									<td>000000</td>
									<td>150xxxx8088</td>
									<td>
										<a style="cursor: pointer">编辑</a>
										/
										<a style="cursor: pointer">删除</a>
									</td>
									<td style="padding: 0;margin: 0;text-align: center;">
										<span class="liangbing_span"  >默认地址</span>
									</td>
								</tr>
								<tr class="liangbing_tr">
									<td>李梓源</td>
									<td>xxx省 xxx市 淮南x</td>
									<td>xxxx xxxx xxxxxx xx</td>
									<td>000000</td>
									<td>xxxxxxxxxxxx</td>
									<td>
										<a style="cursor: pointer">编辑</a>
										/
										<a style="cursor: pointer">删除</a>
									</td>
									<td style="padding: 0;margin: 0;text-align: center;">
										<span class="liangbing_span"  >默认地址</span>
									</td>
									
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<script type="text/javascript" src="js/jquery-2.2.1.js"></script> 
		<script type="text/javascript" src="js/bootstrap.js"></script> 
		<script type="text/javascript" src="js/index_zmj.js"></script>
		<script type="text/javascript" src="js/LB/LB.js"></script>
		<script type="text/javascript" src="js/LB/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="js/LB/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/LB/distpicker.data.js"></script>
		<script type="text/javascript" src="js/LB/distpicker.js"></script>
		<script type="text/javascript" src="js/LB/main.js"></script>
	</body>
</html>