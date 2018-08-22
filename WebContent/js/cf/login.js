/*通过ID获取HTML对象的通用方法，使用$代替函数名称*/
function $(elementId){
	return document.getElementById(elementId);
}	
/*当鼠标离开通行证用户名文本框时，提示文本及样式*/	
function userNameBlur(){
	var userNameId=$('userNameId');
	var userName=$('userName');
	if(userName.value==""){
		
	    userNameId.innerHTML="<p style='color:red'>账号不能为空</p>";
		return false;
	}else{
		userNameId.innerHTML="";
	}
}


function pwdBlur(){
	var pwd=$("pwd");
	var pwdId=$("pwdId");
	if(pwd.value==""){
	
		pwdId.innerHTML="<p style='color:red'>密码不能为空，请输入密码</p>";
		return false;
	}else{
		pwdId.innerHTML="";
	}
}