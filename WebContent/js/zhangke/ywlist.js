var loadData = function(){
	$.ajax({
		type : "POST",
		url : "warestype.action?method=waresTypeShowB",
		success : function(json) { 
			var data = eval("(" + json + ")");
			var html = template('wtbList-template', {
				wtb : data,
			});
			$('#wtb').html(html);
			}
	});
}
var loadData2 = function(){
	$.ajax({
		type : "POST",
		url : "warestype.action?method=waresTypeShowS",
		success : function(json) { 
			var data = eval("(" + json + ")");
			var html = template('wtsList-template', {
				wts : data,
			});
			$('#wts').html(html);
			}
	});
}
var loadData3 = function(){
	$.ajax({
		type : "POST",
		url : "warestype.action?method=waresTypeShowC",
		success : function(json) { 
			var data = eval("(" + json + ")");
			var html = template('wtcList-template', {
				wtc : data,
			});
			$('#wtc').html(html);
			proList.init();
			}
	});
}
var loadData4 = function(){
	var d = getQueryString('d'); 
	$.ajax({
		type : "POST",
		url : "light.action?method=selectDL",
		data :{
			keyword: d
		},
		success : function(json) { 
			var data = eval("(" + json + ")");
			var html = template('wtList-template', {
				wt : data,
			});
			$('#wt').html(html);
		}
	});
}
$(document).ready(function() {
	loadData(); 
	loadData2();
	loadData3();
	loadData4();
});

function getQueryString(name) {   
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");   
    var r = window.location.search.substr(1).match(reg);   
    if (r != null) return decodeURI(r[2]); return null;   
}  

var ckdNum = 0, scrollNum = 1, pageNum = 1;
var proList = {
	init : function() {

		$(".sub_classify_close").on('click', proList.filterClose); //筛选关闭一个条件
		$(".selector_line .ckd").on('click', proList.filterCkd); //筛选产品
		$(".list_operation .more").on('click', proList.filterMore); //筛选更多
		$(".list_sort a").on('click', proList.listSort); //筛选显示全部
		$(".colorimg").on('mouseover', proList.imgOver); //产品移入
		$('.clear-slt').on('click',proList.clearAll); // 清除筛选条件
	},
	
	// 筛选关闭
	filterClose : function() {
		$(this).prev('a').parent().remove();
		// 查询筛选的所有条件
		selectList();
	},
	
	// 清除筛选条件
	clearAll : function(){
		console.info('清除所有');
		$('.sub_classify').remove();
		// 查询筛选的所有条件
		selectList();
	},

	// 选择 筛选条件 时
	filterCkd : function() {
		var obj = $(this);
		// 筛选条件的名字
		var value = obj.html();
		// 筛选条件标签  对应的 类型编号
		var title = obj.attr('title');
		
		// 添加筛选 标签
		$('.values .slt').append('<li class="sub_classify"><a href="" title='+title+'>'+value+'</a><span class="sub_classify_close"></span></li>');
		$(".sub_classify_close").on('click', proList.filterClose); //筛选关闭
		
		// 查询筛选的所有条件
		selectList();
		
	},
	
	//筛选更多
	filterMore : function() {
		var obj = $(this);
		if (obj.parents('.selector_line').attr('name') != undefined) {
			return false;
		}
		;
		if (obj.hasClass('current')) {
			obj.removeClass('current');
			obj.parents('.selector_line').removeClass('selected').find('.more')
					.html('更多<i></i>');
		} else {
			obj.addClass('current');
			obj.parents('.selector_line').addClass('selected').find('.more')
					.html('收起<i></i>');
		}
	},
	// 产品植入
	imgOver : function() {
		// 获得的值  是 上个  显示图片容器的  id
		var t = $(this).attr("targer_id");
		//console.info("-t"+t+"+"+$(t))
		// 获取 该标签 中 data  属性的值
		var src = $(this).attr("data");
		// 获取该商品链接的地址
		var href = $(this).attr("href");
		// 将获取的地址  替换了原来的图片
		$(t).attr("src", src);
		// 将该地址  赋值给 大图片的 链接地址
		$(t).parent().attr("href", href);
		$(this).parent().parent().addClass('current').siblings().removeClass(
				'current');
	},
	// 排序
	listSort : function() {
		//console.info('current default-a');
		var obj = $(this);
		//console.info($(this).val()+"--");
		obj.addClass('current default-a').siblings().removeClass('current default-a');

	},
}

//查询筛选的所有条件
function selectList(){
	// 获取 筛选的条件标签
	var valObj = $(".sub_classify a");
	
	var strTypeList = '';
	//console.info('筛选条件为：');
	var isFlag;
	// 取出筛选的值
	for(var i = 0 ; i < valObj.size() ; i++){
		// 1 代表男鞋 ， 2 代表女鞋
		if( valObj.eq(i).attr('title') == "1" || valObj.eq(i).attr('title') == "2"){
			isFlag = 1;
			console.info('isFlag=' + isFlag);
		}
		strTypeList = strTypeList + valObj.eq(i).attr('title') + ",";
	}
	
	// 用于是否在  strTypeList 前面加 T，来区分  是不是  男 女 分类，以至于在handler 是否要查询子类
	if(isFlag){
		strTypeList = strTypeList.substr(2);
	}
	
	console.info(strTypeList);
	
	var loadData5 = function(){	
		$.ajax({
			type : "POST",
			url : "light.action?method=selectDL2",
			data :{
				keyword: strTypeList
			},
			success : function(json) { 
				var data = eval("(" + json + ")");
				var html = template('wtList-template', {
					wt : data,
				});
				$('#wt').html(html);
			}
		});
	}
	loadData5();
//	var htmlObj = $.ajax({
//		   type: "post",
//		   url: "light.action?method=selectDL",
//		   data: "wtId="+strTypeList+"", // 类型的ID
//		   success: function(msg){
//		     console.info("筛选成功");
//		     alert(strTypeList+"");
////		  /*   $("#list_pro_box").location.href='waresList.jsp';*/
////		       $('#rightFrame').attr("src",'waresList.jsp');
//		     parent.rightFrame.location.reload();
//		   }
//	});
	
	//$('.list_pro_box').html(htmlObj.responseText);
	
	
}
