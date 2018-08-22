//文字上下滚动播放特效
function scrollNews(selector,Entry,time,StartIndex)
{
	var _self=this;
	this.Selector=selector;
	this.Entry=Entry;
	this.time = time;
	this.i=StartIndex||0;
	this.Count=$(this.Selector+" ul li").length;
	$(this.Selector+" ul li").hide();//全部隐藏
	$(this.Selector+" ul li").eq(this.i).show();//第i个显示
	$(this.Selector).bind("mouseenter",function(){
	    	if(_self.sI){clearInterval(_self.sI);}
	}).bind("mouseleave",function(){
			_self.showIndex(_self.i++);
	})
	/*生成激活OL项目*/
	for(var j=0;j<this.Count;j++)
		$(this.Selector+" .activeOL").append('<li><a onclick="'+this.Entry+'.showIndex('+j+');" href="#"></a></li>');
	$(this.Selector+" ol li a").eq(this.i).addClass("active");
	this.sI=setInterval(this.Entry+".showIndex(null)",this.time);
	
	this.GetSelector=function(){return this.Selector;}
	this.showIndex=function(index)
	{
		this.i++;//显示下一个
		if(this.sI){clearInterval(this.sI);}
		this.sI=setInterval(this.Entry+".showIndex()",this.time);
		if (index!=null)
		{
			this.i=index;
		}
		if(this.i==this.Count)
			this.i=0;
		$(this.Selector+" ul li").hide();
		$(this.Selector+" ul li").eq(this.i).slideDown();
		$(this.Selector+" ol li a").removeClass("active");
		$(this.Selector+" ol li a").eq(this.i).addClass("active");
	}
}
//动态加载js和css文件
var dynamicLoading = {
    css: function(path){
		if(!path || path.length === 0){
			throw new Error('argument "path" is required !');
		}
		var head = document.getElementsByTagName('head')[0];
        var link = document.createElement('link');
        link.href = path;
        link.rel = 'stylesheet';
        link.type = 'text/css';
        head.appendChild(link);
    },
    js: function(path){
		if(!path || path.length === 0){
			throw new Error('argument "path" is required !');
		}
		var head = document.getElementsByTagName('head')[0];
        var script = document.createElement('script');
        script.src = path;
        script.type = 'text/javascript';
        head.appendChild(script);
    }
}
function changeLinkDiv(divName,linkName){
        if($('#'+divName).css('display')=='none'){
                $('#'+divName).show();
                //$('#'+linkName).html("收起");
        }else{
                $('#'+divName).hide();
               // $('#'+linkName).html("查看更多");
        }
}
function getVouchers(pr_id){
	var param='&pr_id='+pr_id;
	Ajax.call($app_url+'xzz/promotion_api/getVouchers&app_fmt=json', param, 
		function (s){	
			switch (s.code) {
				case 200:
					baison.confirm(s.msg+'是否立即登录或注册？',function(e){
						if(e) {
							window.location.href="/user/index/do_index?return="+encodeURIComponent(window.location.pathname+window.location.search);
							return false;
						}
					})	
				break;							
			default:
				baison.alert(s.msg);
				break;
			}
			//baison.alert(s.msg);
	}, 'POST', 'json');
	
}
var mainNavHover={
	showSubContent:function(){ //导航二级菜
        //Register Hover Event
         $('.mainNav li').hover(
			function(){
				$(this).find('div.subContent').stop(true,true).fadeIn();
            },
			function(){
                $(this).find('div.subContent').stop(true,true).fadeOut();
            });
    }
};

//商品满意度评分
function get_rate(rate){
	rate=rate.toString();
	var score1;
	var score2;
	$("#score2").show();
	if (rate.length>=3){
		score1=10;	
		score2=0;
		$("#score2").hide();
	}else if(rate=="0"){
		score1=0;
		score2=0;
	}else{
		score1=rate.substr(0,1);
		score2=rate.substr(1,1);
	}
	$("#score1").text(score1);
	$("#score2").text("."+ score2);
	$(".currentScore").animate({width:(parseInt(score1)+parseInt(score2)/10) * 14,height:26},1000);
	$("#gradeScore dd").each(function(){
		$(this).mouseover(function(){
			$(".currentScore").width($(this).attr("rate") * 14 );
			$("#score1").text($(this).attr("rate"));
			$("#score2").text(".0");
		}).click(function(){
			$("#f").text($(this).attr("rate"));
			$("#my_rate").show();
		})
	})
	$("#gradeScore").mouseout(function(){
		$("#score1").text(score1);
		$("#score2").text("."+ score2);
		$(".currentScore").width((parseInt(score1)+parseInt(score2)/10) * 14);
	})
}

//商品满意度评分
function up_rate(rate){
	$(".currentScore").width("0");
	get_rate(rate);
	$("#commnet_rank_tex").attr('value',rate);
};
function get_rank(rate,index){
	intRate=parseInt(rate);
	rate=rate.toString();
	if(intRate<=40){
		$("#commentWord"+index).removeClass("redBack");
		$("#commentWord"+index).removeClass("yellowBack");
		$("#commentWord"+index).addClass("grayBack");
		$(".currentScore"+index).removeClass("redScore");
		$(".currentScore"+index).removeClass("yellowScore");
		$(".currentScore"+index).addClass("grayScore");
		if(intRate>20 && intRate<=80)
			$("#commentWord"+index).html('2分 失望');
		else $("#commentWord"+index).html('1分 失望');
	}
	else if(intRate<=80){
		$("#commentWord"+index).removeClass("redBack");
		$("#commentWord"+index).removeClass("grayBack");
		$("#commentWord"+index).addClass("yellowBack");
		$(".currentScore"+index).removeClass("redScore");
		$(".currentScore"+index).removeClass("grayScore");
		$(".currentScore"+index).addClass("yellowScore");
		if(intRate>60 && intRate<=80)
			$("#commentWord"+index).html('4分 满意');
		else $("#commentWord"+index).html('3分 满意');
	}	
	else{
		$("#commentWord"+index).removeClass("yellowBack");
		$("#commentWord"+index).removeClass("grayBack");
		$("#commentWord"+index).addClass("redBack");
		$(".currentScore"+index).removeClass("yellowScore");
		$(".currentScore"+index).removeClass("grayScore");
		$(".currentScore"+index).addClass("redScore");
		$("#commentWord"+index).html('5分 惊喜');
	}
	if(index==1){
		
	}
	
	var score1;
	var score2;
	if (rate.length>=3){
		score1=10;	
		score2=0;
	}else if(rate=="0"){
		score1=0;
		score2=0;
	}else{
		score1=rate.substr(0,1);
		score2=rate.substr(1,1);
	}
	$(".currentScore"+index).animate({width:(parseInt(score1)+parseInt(score2)/10) * 15,height:26},1000);
	$("#starScore"+index+" dd").each(function(){
		$(this).mouseover(function(){
			$(".currentScore"+index).width($(this).attr("rate") * 15 );
			$("#score1").text($(this).attr("rate"));
			$("#score2").text(".0");
		}).click(function(){
			$("#f").text($(this).attr("rate"));
			$("#my_rate").show();
		})
	})
	$("#starScore"+index).mouseout(function(){
		$("#score1").text(score1);
		$("#score2").text("."+ score2);
		$(".currentScore"+index).width((parseInt(score1)+parseInt(score2)/10) * 15);
	})
}
function up_rank(rate,index){
	$(".currentScore"+index).width("0");
	get_rank(rate,index);
	$("#commnet_rank_tex"+index).attr('value',rate);
}
//tab切换
function tabFun(tab,content,current){
		var conNum = 0;
		$(tab).click(function(){
			$(this).addClass(current).siblings().removeClass(current);
			
			conNum =$(this).index();
			$(content+">div:eq("+conNum+")").show().siblings().hide();	
		});	
	}
 
 
//方法调用
$(function(){
	//ie下a标签消除虚线
	$("a").click(function(){
		$(this).blur();					  
	});
	
	//侧栏去最后元素下边框
	$(".sidebarBoxContent .borderBot:last-child").removeClass("borderBot");
	
	//导航二级菜
	 mainNavHover.showSubContent();
	 
	//首页banner切换
	(function(){
		var curr = 0;
		var num = $(".indexBanner>a").length;
		$("#jsNav .trigger").each(function(i){
			$(this).click(function(){
				curr = i;
				$(".indexBanner>a").eq(i).fadeIn("slow").siblings("a").hide();
				$(this).siblings(".trigger").removeClass("imgSelected").end().addClass("imgSelected");
				return false;
			});
		});
		//自动翻
		var timer = setInterval(function(){
			todo = (curr + 1) % num;
			$("#jsNav .trigger").eq(todo).click();
		},6000);
				
		//鼠标悬停在触发器上时停止自动翻
		$("#jsNav a").hover(function(){
				clearInterval(timer);
			},
			function(){
				timer = setInterval(function(){
					todo = (curr + 1) % num;
					$("#jsNav .trigger").eq(todo).click();
				},6000);			
			}
		);
	})();
	
	//商品详细页商品介绍、商品评论、商品咨询、售后服务tab切换
	tabFun(".informationTitle li",".informationCon","current");
	//秒杀列表所有活动、正在进行、即将开场、往期活动
	tabFun(".groupButtonBox a",".seckillMainContent","groupCurrentBtn");
	//我的订单tab切换
	tabFun(".myOrdersTab li",".myOrdersCon","current");
	tabFun(".cmyOrdersTab li",".myOrdersCon","current2");
	//登录、注册、找回密码表单样式
	$(".loginRegister input,.loginRegister label").focus(function(){
		$(this).closest("li").addClass("focus").siblings().removeClass("focus");
	});
	
	//调用星级评价
	$(".rateBox").rate();
	
})

//rate快速评价
; (function($) {
    $.fn.rate = function() {
        var obj = $(this);
        //starRate
        var rateFlag = true;
        obj.find("img").click( function() {
				rateFlag = false;
                var $oldSrc = $(this).attr("src");
                var $newSrc = $oldSrc.replace("starE", "starF");
                var $oldSrc = $oldSrc.replace("starF", "starE");
                $(this).attr("src", $newSrc).prevAll("img").attr("src", $newSrc).end().nextAll("img").attr("src", $oldSrc);
                obj.attr("rate",$(this).parent().find("img").index(this) + 1);
            })
        obj.find("img").mouseover(function() {
                if (rateFlag) {
                    var $oldSrc = $(this).attr("src");
                    var $newSrc = $oldSrc.replace("starE", "starF");
                    $(this).attr("src", $newSrc).prevAll("img").attr("src", $newSrc);
                }
            });
       	obj.find("img").mouseleave(function() {
                if (rateFlag) {
                    var $oldSrc = $(this).attr("src");
                    var $newSrc = $oldSrc.replace("starF", "starE");
                    $(this).attr("src", $newSrc).prevAll("img").attr("src", $newSrc);
                }
            });
    };
})(jQuery);
