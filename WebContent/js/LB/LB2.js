$(function(){
				/*$(".liangbing_wrap").mouseover(function(){
					$(this).removeClass("liangbing_wrap");
					$(this).addClass("on");	
					$(this).mouseleave(function(){
						$(this).removeClass("on");
						$(this).addClass("liangbing_wrap");
					});
				});*/
				/*$(".liangbing_wrap").click(function(){
					$(this).removeClass("liangbing_wrap");
					$(this).addClass("on1");	
				});*/
/*-----------------------------地址边框---------------------------------------*/
				$(".liangbing_siteDiv .liangbing_wrap").click(function(){
					// alert(pobj.val());
					//先去除LI里的所有边线
					$(".liangbing_siteDiv .liangbing_wrap").removeAttr("style");
					$(this).css({cursor:"pointer"});
					$(this).css("background-image","url(images/LB/-1.png)");
				});
				
/*-----------------------------新增地址---------------------------------------*/
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
				
				
/*--------------------------修改地址-----------------------------*/
				$('#liangbing_size3').blur(sizeBlur2);
				/**详细地址 文本框 获取焦点时*/
				function sizeBlur2(){
					
					var SizeValue = $('#liangbing_size3').val();
					var SizeDivObj = $("#liangbing_size4");

					if (SizeValue == ''){
						SizeDivObj.html("详细地址不能为空,请输入地址");
						$('#liangbing_size4').css({ color: "#ff0011" });
						return false;
					}else{
						SizeDivObj.html("");
						$('#liangbing_size4').css({ color: "#ffffff" });
						return true;
					}
				}
				$('#liangbing_name3').blur(nameBlur2);
				/**收货人 文本框 获取焦点时*/
				function nameBlur2(){
					
					var NameValue = $('#liangbing_name3').val();
					var NameDivObj = $("#liangbing_name4");

					if (NameValue == ''){
						NameDivObj.html("收货人姓名不能为空,请输入收货人姓名");
						$('#liangbing_name4').css({ color: "#ff0011" });
						return false;
					}else{
						SizeDivObj.html("");
						$('#liangbing_name4').css({ color: "#ffffff" });
						return true;
					}
				}
				$('#liangbing_mobilePhone3').blur(mobilePhoneBlur2);
				/**手机号码 文本框 获取焦点时*/
				function mobilePhoneBlur2(){
					
					var mobilePhoneValue = $('#liangbing_mobilePhone3').val();
					var mobilePhoneDivObj = $("#liangbing_mobilePhone4");
					
					//设置正则表达式
					var telRegExp = /^[0-9]{11}$/;
					//判断输入的值是否符合正则表达式
					var isTelRegExp = telRegExp.test(mobilePhoneValue);
					
					if (mobilePhoneValue == ''){
						mobilePhoneDivObj.html("手机号码不能为空,请输入手机号码");
						$('#liangbing_mobilePhone4').css({ color: "#ff0011" });
						return false;
					}else if(isTelRegExp != true){
						mobilePhoneDivObj.html("手机号码由11位数字组成");
						$('#liangbing_mobilePhone4').css({ color: "#ff0011" });
						return false;
					}else{
						mobilePhoneDivObj.html("");
						$('#liangbing_mobilePhone4').css({ color: "#ffffff" });
						return true;
					}
				}				
				$('#liangbing_phone3').blur(phoneBlur2);
				/**电话号码 文本框 获取焦点时*/
				function phoneBlur2(){
					
					var PhoneValue = $('#liangbing_phone3').val();
					var PhoneDivObj = $("#liangbing_phone4");

					if (PhoneValue == ''){
						return false;
					}else{
						return true;
					}
				}
				
				//*)得到form标签对象
				var formObj = $('#liangbing_for2');
				//添加提交事件
				formObj.submit(liangbing_liangbing2);
				
				//判断满不满足提交条件的函数
				function liangbing_liangbing2(){
					var flagSize = sizeBlur2();
					var flagName = nameBlur2();
					
					//判断全为真的话，返回真。否则返回false
					if(flagSize == true & flagName == true  ){
						console.info("true");
						return true;
					}else{
						console.info("false");
						return false;
					}
				}
			});