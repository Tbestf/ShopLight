$(function(){
	/************************新增验证**********************************/
	$('#liangbing_size').blur(sizeBlur);
	/**详细地址 文本框 获取焦点时*/
	function sizeBlur(){
		
		var SizeValue = $('#liangbing_size').val();
		var SizeDivObj = $("#liangbing_size2");

		if (SizeValue == ''){
			SizeDivObj.html("详细地址不能为空,请输入地址");
			$('#liangbing_size2').css({ color: "#ff0011" });
			return false;
		}else{
			SizeDivObj.html("");
			$('#liangbing_size2').css({ color: "#ffffff" });
			return true;
		}
	}
	$('#liangbing_name').blur(nameBlur);
	/**收货人 文本框 获取焦点时*/
	function nameBlur(){
		
		var NameValue = $('#liangbing_name').val();
		var NameDivObj = $("#liangbing_name2");

		if (NameValue == ''){
			NameDivObj.html("收货人姓名不能为空,请输入收货人姓名");
			$('#liangbing_name2').css({ color: "#ff0011" });
			return false;
		}else{
			NameDivObj.html("");
			$('#liangbing_name2').css({ color: "#ffffff" });
			return true;
		}
	}
	$('#liangbing_mobilePhone').blur(mobilePhoneBlur);
	/**手机号码 文本框 获取焦点时*/
	function mobilePhoneBlur(){
		
		var mobilePhoneValue = $('#liangbing_mobilePhone').val();
		var mobilePhoneDivObj = $("#liangbing_mobilePhone2");

		//设置正则表达式
		var telRegExp = /^[0-9]{11}$/;
		//判断输入的值是否符合正则表达式
		var isTelRegExp = telRegExp.test(mobilePhoneValue);

		if (mobilePhoneValue == ''){
			mobilePhoneDivObj.html("手机号码不能为空,请输入手机号码");
			$('#liangbing_mobilePhone2').css({ color: "#ff0011" });
			return false;
		}else if(isTelRegExp != true){
			mobilePhoneDivObj.html("手机号码由11位数字组成");
			$('#liangbing_mobilePhone2').css({ color: "#ff0011" });
			return false;
		}else{
			mobilePhoneDivObj.html("");
			$('#liangbing_mobilePhone2').css({ color: "#ffffff" });
			return true;
		}
	}				
	$('#liangbing_phone').blur(phoneBlur);
	/**电话号码 文本框 获取焦点时*/
	function phoneBlur(){
		
		var PhoneValue = $('#liangbing_phone').val();
		var PhoneDivObj = $("#liangbing_phone2");

		if (PhoneValue == ''){
			return false;
		}else{
			return true;
		}
	}

	//*)得到form标签对象
	var formObj = $('#liangbing_for');
	//添加提交事件
	formObj.submit(liangbing_liangbing);

	//判断满不满足提交条件的函数
	function liangbing_liangbing(){
		var flagSize = sizeBlur();
		var flagName = nameBlur();
		//判断全为真的话，返回真。否则返回false
		if(flagSize == true & flagName == true  ){
			console.info("true");
			return true;
		}else{
			console.info("false");
			return false;
		}
	}
	/*$("#liangbing_table .liangbing_tr").hover(function() {
		 $('.liangbing_span',this).show();
		 
	  },
	  function () {
		 $('.liangbing_span',this).hide();
		 console.log("liziyuan");
		}
	);
	$('.liangbing_span').click(function(){
		 $(".liangbing_span").removeAttr("style");
		 $(".liangbing_span").show();
		 $(this).css("display","");
		 $(this).css("background-color","#888888");

	 });*/
	var isClick = 0;

	$("#liangbing_table .liangbing_tr").hover(function() {
		 $('.liangbing_span',this).show();
		 
	  },
	  function () {
		if(isClick == 0){
			 $('.liangbing_span',this).hide();
		 	console.log($(this).index());
			}		
		}
	);
	$('.liangbing_span').click(function(){
		 isClick = 1;
		 $(".liangbing_span").hide();
		 $(".liangbing_span").css("background-color","#fff");
		 $(this).show();
		 $(this).css("display","flex");
		 $(this).css("background-color","#888888");

	 });
});