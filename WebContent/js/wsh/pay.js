$(function(){
	var timestamp=new Date().getTime();
	$("#mchntOrderNo").val("ceshi"+timestamp);
})


function submit(){
	//请求参数都按照名称字符升序排列
	var version='pc_NoEncrypt';//传此值时，明天云返回明文参数，否则返回密文参数
	var subject=$("#subject").text();//商品名
	var mchntOrderNo=$("#mchntOrderNo").text();//订单编号
	mchntOrderNo =$.trim(mchntOrderNo);
	var amount=$("#amount").text()*100;//金额(分)
	var appid='0000000022';//appid
	var key='e7d4c31780d1379c6af38f82e455967c';//秘钥
	var body=$("#body").text();//商品描述
	var clientIp='192.168.1.1';//请求ip地址
	var notifyUrl='http://localhost:8080/day25_00_pay/servlet/ResponsePayServlet';//异步回调url
	var returnUrl='https://www.google.com.hk';
/*	var returnUrl="https://www.google.com.hk/";*/
	var payChannelId ="3000000031";
	var signature='';
	var jsonStr='{';
	//请求参数都按照名称字符升序排列
	if(amount!=''&&$.trim(amount).length>0){
		jsonStr+='"amount":"'+amount+'",';
		signature+='amount='+amount+'&'
	}
	if(appid!=''&&$.trim(appid).length>0){
		jsonStr+='"appid":"'+appid+'",';
		signature+='appid='+appid+'&'
	}
	if(body!=''&&$.trim(body).length>0){
		jsonStr+='"body":"'+body+'",';
		signature+='body='+body+'&'
	}
	if(clientIp!=''&&$.trim(clientIp).length>0){
		jsonStr+='"clientIp":"'+clientIp+'",';
		signature+='clientIp='+clientIp+'&'
	}
	if(mchntOrderNo!=''&&$.trim(mchntOrderNo).length>0){
		jsonStr+='"mchntOrderNo":"'+mchntOrderNo+'",';
		signature+='mchntOrderNo='+mchntOrderNo+'&'
	}
	
	if(notifyUrl!=''&&$.trim(notifyUrl).length>0){
		jsonStr+='"notifyUrl":"'+notifyUrl+'",';
		signature+='notifyUrl='+notifyUrl+'&'
	}
	if(returnUrl!=''&&$.trim(returnUrl).length>0){
		jsonStr+='"returnUrl":"'+returnUrl+'",';
		signature+='returnUrl='+returnUrl+'&'
	}
	if(subject!=''&&$.trim(subject).length>0){
		jsonStr+='"subject":"'+subject+'",';
		signature+='subject='+subject+'&'
	}
	if(version!=''&&$.trim(version).length>0){
		jsonStr+='"version":"'+version+'",';
		signature+='version='+version+'&'
	}

/*	if(payChannelId!=''&&$.trim(payChannelId).length>0){
		jsonStr+='"payChannelId":"'+payChannelId+'",';
		signature+='payChannelId='+payChannelId+'&'
	}*/


	if(key!=''&&$.trim(key).length>0){
		signature+='key='+key
	}
	if(signature!=''&&$.trim(signature).length>0){
		jsonStr+='"signature":"'+signature+'",';
	}
	
	jsonStr=jsonStr.substring(0,jsonStr.length-1);
	jsonStr+='}';
	console.log(jsonStr);

	var result =mtEncryptAndMD5(jsonStr);
	$("#orderInfo").val(result);
	document.getElementById('form').submit();
}