
$(function(){
	/*获取手机文本框对象*/
	var telObj = $('#tel');
	//console.log("1111");
	
	/*当鼠标放在手机号文本框时，提示文本及样式	
	function telfocus(){
		var telIdObj=$('#telId');
		telIdObj.html("手机号码以13，15，18开头,手机号码由11位数字组成");
		telIdObj.addClass('import_prompt');
	}
	telObj.focus(telfocus);*/
	
	/*在现有对象上添加失去焦点的事件*/
	function telblur(){
		var telValue = $(this).val();
		var telIdObj = $('#telId');
		if("" != telValue && telValue.length != 0){
			var reg=/^(13|15|17|18)\d{9}$/;
			var panduan=reg.test(telValue);
			
			if(panduan){
				
				telIdObj.html("手机号码输入正确");
				telIdObj.addClass("ok_prompt");
				
				return true;
			}else{
				telIdObj.html("手机号码不正确，请重新输入");
				telIdObj.addClass("error_prompt");
				return false;
			}
			}else{
				
				telIdObj.html("手机号码不能为空，请输入手机号码");
				
				telIdObj.addClass("error_prompt");
				
			}
	}
	telObj.blur(telblur);
		
	
	/*获取邮箱地址文本框对象*/
	var emailObj=$('#name');
	
	/*当鼠标放在邮箱地址文本框时，提示文本及样式	
	function emailfocus(){
		var emailIdObj=$('#emailId');
		emailIdObj.html("请输入您常用的电子邮箱");
		emailIdObj.addClass('import_prompt');
	}
	emailObj.focus(emailfocus);*/
	
	/*在现有对象上添加失去焦点的事件*/
	function emailblur(){
		var emailValue = $(this).val();
		var emailIdObj = $('#nameId');
		if("" != emailValue && emailValue.length != 0){
			emailIdObj.html("用户名格式输入正确");
			emailIdObj.addClass("ok_prompt");
		
		}else{
			emailIdObj.html("用户名不能为空");
			emailIdObj.addClass("error_prompt");
				
		}
	}
	emailObj.blur(emailblur);
	
	
	/*获取设置密码文本框对象*/
	var pwdObj=$('#pwd');
	
	/*当鼠标放在设置密码文本框时，提示文本及样式	
	function pwdfocus(){
		var pwdIdObj=$('#pwdId');
		pwdIdObj.html("密码长度为6-20个字符");
		pwdIdObj.addClass('import_prompt');
	}
	pwdObj.focus(pwdfocus);*/
	
	/*在现有对象上添加失去焦点的事件*/
	function pwdblur(){
		var pwdValue = $(this).val();
		var pwdIdObj = $('#pwdId');
		if(pwdValue == ""){
			pwdIdObj.html("密码不能为空，请重新输入密码");
			pwdIdObj.addClass('error_prompt');
			return false;
			}
		if(pwdValue.length<6 || pwdValue.length>20){
			pwdIdObj.html('请重新输入,密码长度为6-20');
			pwdIdObj.addClass('error_prompt');
			return false;
			}
			pwdIdObj.html("密码输入正确");
			pwdIdObj.addClass("ok_prompt");
			return true;
	}
	pwdObj.blur(pwdblur);
	
	/*获取确认密码文本框对象*/
	var repwdObj=$('#repwd');
	
	/*当鼠标离开确认密码文本框时，提示文本及样式*/	
	function repwdblur(){
		var repwdValue = $(this).val();
		var repwdIdObj = $('#repwdId');
		var pwdValue = $('#pwd').val();
		if(repwdValue==""){
			repwdIdObj.html('重复密码不能为空，请重复输入密码');
			repwdIdObj.addClass('error_prompt');
			return false;
			}
		if(repwdValue!=pwdValue){
			repwdIdObj.html('两次输入的密码不一致，请重新输入');
			repwdIdObj.addClass('error_prompt');
			return false;
			}
			repwdIdObj.html('两次密码输入正确');
			repwdIdObj.addClass('ok_prompt');
			return true;
	}
	repwdObj.blur(repwdblur);
});








