
$(function(){
	//测试链接弹出框:window.alert("woowowowo");
	var Nickname = $('#nickname');

	Nickname.focus(Nicknamefocus);
	Nickname.blur(Nicknameblur);

	function Nicknamefocus(){
		var nicknameTishi = $("#nicknameTishi");
		nicknameTishi.html("昵称不多于8个字符");
		nicknameTishi.addClass('help-inline alert alert-warning');
	}

	function Nicknameblur(){
		//测试是否调用:console.log("ssssssssss");
		var nicknameVal = $(this).val();
		var nicknameTishi = $("#nicknameTishi");
		if("" == nicknameVal || nicknameVal.length > 8){
			nicknameTishi.removeClass('help-inline alert alert-warning');
			nicknameTishi.html("<img src='images/twt/error.png'>")
			return false;
		}else{
			nicknameTishi.removeClass('help-inline alert alert-warning');
			nicknameTishi.html("<img src='images/twt/ok.png'>")
			return true;
		}
	}

	var Zhenname = $('#Zhenname');

	Zhenname.focus(Zhennamefocus);
	Zhenname.blur(Zhennameblur);

	function Zhennamefocus(){
		var ZhennameTishi = $("#ZhennameTishi");
		ZhennameTishi.html("真实姓名不能为空");
		ZhennameTishi.addClass('help-inline alert alert-warning');
	}

	function Zhennameblur(){
		//测试是否调用:console.log("ssssssssss");
		var ZhennameVal = $(this).val();
		var ZhennameTishi = $("#ZhennameTishi");
		if("" == ZhennameVal){
			ZhennameTishi.removeClass('help-inline alert alert-warning');
			ZhennameTishi.html("<img src='images/twt/error.png'>")
			return false;
		}else{
			ZhennameTishi.removeClass('help-inline alert alert-warning');
			ZhennameTishi.html("<img src='images/twt/ok.png'>")
			return true;
		}
	}

	var ContactWay = $('#ContactWay');

	ContactWay.focus(ContactWayfocus);
	ContactWay.blur(ContactWayblur);

	function ContactWayfocus(){
		var ContactWayTishi = $("#ContactWayTishi");
		ContactWayTishi.html("请正确填写您的手机号码!");
		ContactWayTishi.addClass('help-inline alert alert-warning');
	}

	function ContactWayblur(){
		//测试是否调用:console.log("ssssssssss");
		var ZhennameVal = $(this).val();
		var reg=/^(13|15|18)\d{9}$/;
		var ContactWayTishi = $("#ContactWayTishi");
		if("" == ZhennameVal || reg.test(ZhennameVal)==false){
			ContactWayTishi.removeClass('help-inline alert alert-warning');
			ContactWayTishi.html("<img src='images/twt/error.png'>")
			return false;
		}else{
			ContactWayTishi.removeClass('help-inline alert alert-warning');
			ContactWayTishi.html("<img src='images/twt/ok.png'>")
			return true;
		}
	}
	
	var youbian = $('#youbian');

	youbian.focus(youbianfocus);
	youbian.blur(youbianblur);

	function youbianfocus(){
		var youbianTishi = $("#youbianTishi");
		youbianTishi.html("邮编不能为空！");
		youbianTishi.addClass('help-inline alert alert-warning');
	}

	function youbianblur(){
		//测试是否调用:console.log("ssssssssss");
		var ZhennameVal = $(this).val();
		var youbianTishi = $("#youbianTishi");
		if("" == ZhennameVal){
			youbianTishi.removeClass('help-inline alert alert-warning');
			youbianTishi.html("<img src='images/twt/error.png'>")
			return false;
		}else{
			youbianTishi.removeClass('help-inline alert alert-warning');
			youbianTishi.html("<img src='images/twt/ok.png'>")
			return true;
		}
	}
})