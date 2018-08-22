 function neo(id){ //这里id
    var oStar = document.getElementById(id);
    var aLi = oStar.getElementsByTagName("li");
    var oUl = oStar.getElementsByTagName("ul")[0];
    var oSpan = oStar.getElementsByTagName("span")[1];
    var oP = oStar.getElementsByTagName("p")[0];
    var input=oStar.getElementsByTagName("input")[0];
    var i = iScore = iStar = 0;
	var aMsg = {
		'rate-1': {
					'rate-1': '很不满意|差得太离谱，与卖家描述的严重不符，非常不满',
					'rate-2': '不满意|部分有破损，与卖家描述的不符，不满意',
					'rate-3': '一般|质量一般，没有卖家描述的那么好',
					'rate-4': '满意|质量不错，与卖家描述的基本一致，还是挺满意的',
					'rate-5': '非常满意|质量非常好，与卖家描述的完全一致，非常满意'
				   },
		'rate-2': {
					'rate-1': '很不满意|卖家态度很差，还骂人、说脏话，简直不把顾客当回事',
					'rate-2': '不满意|卖家有点不耐烦，承诺的服务也兑现不了',
					'rate-3': '一般|卖家回复问题很慢，态度一般，谈不上沟通顺畅',
					'rate-4': '满意|卖家服务挺好的，沟通挺顺畅的，总体满意',
					'rate-5': '非常满意|卖家的服务太棒了，考虑非常周到，完全超出期望值'
				   },
		'rate-3': {
					'rate-1': '很不满意|到货速度严重延误，货物破损，派件员态度恶劣',
					'rate-2': '不满意|到货速度慢，外包装严重变形，派件员不耐烦，态度差',
					'rate-3': '一般|到货速度一般，外包装变形，派件员态度一般',
					'rate-4': '满意|到货速度及时，派件员态度较好',
					'rate-5': '非常满意|到货速度非常快，商品完好无损，派件员态度很好'
				   }
				};
    for (i = 1; i <= aLi.length; i++){
        aLi[i - 1].index = i;
        //鼠标移过显示分数
        aLi[i - 1].onmouseover = function (){
            fnPoint(this.index);
            //浮动层显示
            oP.style.display = "block";
            //计算浮动层位置
            oP.style.left = oUl.offsetLeft + this.index * this.offsetWidth - 104 + "px";
			iStar = this.index;
			//获取span id的值 来判断"rate-1"
			var ovalue = oSpan.getAttribute("id");
			if(ovalue == "ooSpan" ){
				var st = aMsg["rate-1"]["rate-" + iStar].match(/(.+)\|/)[1];
				var str = aMsg["rate-1"]["rate-" + iStar].match(/\|(.+)/)[1];
				//匹配浮动层文字内容
				oP.innerHTML = "<em><b>" + iStar + "</b> 分 " + st + "</em>" +str;
			}else if(ovalue == "toSpan" ){
				var st = aMsg["rate-2"]["rate-" + iStar].match(/(.+)\|/)[1];
				var str = aMsg["rate-2"]["rate-" + iStar].match(/\|(.+)/)[1];
				//匹配浮动层文字内容
				oP.innerHTML = "<em><b>" + iStar + "</b> 分 " + st + "</em>" +str;			
			}else{
				var st = aMsg["rate-3"]["rate-" + iStar].match(/(.+)\|/)[1];
				var str = aMsg["rate-3"]["rate-" + iStar].match(/\|(.+)/)[1];
				//匹配浮动层文字内容
				oP.innerHTML = "<em><b>" + iStar + "</b> 分 " + st + "</em>" +str;			
			}
        };
         
        //鼠标离开后恢复上次评分
        aLi[i - 1].onmouseout = function (){
            fnPoint(input.value);
            //关闭浮动层
            oP.style.display = "none";
			//鼠标移开去除样式（不点击）
			//获取span的值，当为空时则不加样式
			ooSpan = oSpan.innerText;
			if(ooSpan == "" || ooSpan.length == null){
				for(i = 0; i < aLi.length; i++){
					aLi[i].className = "";
				};
			}
        };
        //点击后进行评分处理
        aLi[i - 1].onclick = function (){
            iStar = this.index;
			//获取span id的值 来判断"rate-1"
			var ovalue = oSpan.getAttribute("id");
			if(ovalue == "ooSpan" ){
				var str = aMsg["rate-1"]["rate-" + iStar].match(/\|(.+)/)[1]
				oP.style.display = "none";
				oSpan.innerHTML = "<strong>" + iStar + " 分</strong> (" +str + ")";
				input.value=this.index;
			}else if(ovalue == "toSpan" ){
				var str = aMsg["rate-2"]["rate-" + iStar].match(/\|(.+)/)[1]
				oP.style.display = "none";
				oSpan.innerHTML = "<strong>" + iStar + " 分</strong> (" +str + ")";
				input.value=this.index;
			}else{
				var str = aMsg["rate-3"]["rate-" + iStar].match(/\|(.+)/)[1]
				oP.style.display = "none";
				oSpan.innerHTML = "<strong>" + iStar + " 分</strong> (" +str + ")";
				input.value=this.index;
			}
        }
    }
     
    //评分处理
    function fnPoint(iArg){
        //分数赋值
        iScore = iArg || iStar;
        for (i = 0; i < aLi.length; i++) aLi[i].className = i < iScore ? "on" : "";  
    }
     
};
 