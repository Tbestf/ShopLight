$(function() {
	// 右侧小图片标签
	var img_small = $(".img_small");
	// 右侧中大图片标签
	var img_cent = $("#img_big");
	img_small.mouseenter(function() {
		// 当鼠标移到div容器上时给容器先将所有容器的边框线初始化
		img_small.css("border", "#DCDCDC 1px solid");
		// 初始化边框线后给鼠标所在的容器添加红色边框线
		$(this).css("border", "red 1px solid");
		// 得到鼠标所在的图片标签
		var img = $(this).children("img");
		// 得到图片标签中的imgcent属性
		var imgCent = img.attr("imgCent");
		// 将imgcent属性赋给大图片的src属性
		img_cent.attr("src", imgCent);
		// 得到图片标签中的imgbig属性
		var imgBig = img.attr("imgBig");
		// 将imgBig属性赋给大图片的imgBig属性
		img_cent.attr("imgBig", imgBig);
	});

	// 放大镜在div里移动显示方法
	// 右侧大图片容器
	var con = $("#big_img");
	// 右侧大图片标签
	var img = $('#img_big');
	// 容器宽度
	var wid = con.width();
	// 容器高度
	var hei = con.height();
	// 容器距离原点的X轴距离
	var left = con.offset().left;
	// 容器距离远点的Y轴距离
	var top = con.offset().top;
	// 声明一个中图的src属性
	var imgcentsrc = null;
	con.mousemove(function(e) {
		var imgBig = img.attr("imgBig");
		imgcentsrc = img.attr("src");
		con.css("overflow", "hidden");
		img.attr("src", imgBig);
		var x = e.pageX - left;
		var y = e.pageY - top;
		var marX = -(x / (wid * 2)) * 820 + 'px';
		var marY = -(y / (wid * 2)) * 820 + 'px';
		img.width(800);
		img.height(800);
		img.css("margin-left", marX);
		img.css("margin-top", marY);
	});
	// 当鼠标离开放大镜div时执行方法
	con.mouseleave(function() {
		img.width('100%');
		img.height('100%');
		img.css("margin-left", 0);
		img.css("margin-top", 0);
		img.attr("src", imgcentsrc);
	});

	// 颜色选择
	var color = $(".yanse");
	color.click(function() {
		color.css("border", "#DCDCDC 1px solid");
		$(this).css("border", "red 1px solid");
		var colorId = $(this).attr("colorId");
		$.ajax({
			type : "POST",
			url : "http://localhost:8888/shoespro/waresDetailhandler.action?method=wareDetailAjax",
			dataType: "json",
			data : "colorId="+colorId,
			success : function(msg) {
				//第一组数据
				var imgBig1 = msg.data1.imgsBig;
				var imgsCent1 = msg.data1.imgsCent;
				var imgsSmall1 = msg.data1.imgsSmall;
				//第二组数据
				var imgBig2 = msg.data2.imgsBig;
				var imgsCent2 = msg.data2.imgsCent;
				var imgsSmall2 = msg.data2.imgsSmall;
				//第三组数据
				var imgBig3 = msg.data3.imgsBig;
				var imgsCent3 = msg.data3.imgsCent;
				var imgsSmall3 = msg.data3.imgsSmall;
				//第四组数据
				var imgBig4 = msg.data4.imgsBig;
				var imgsCent4 = msg.data4.imgsCent;
				var imgsSmall4 = msg.data4.imgsSmall;
				//第五组数据
				var imgBig5 = msg.data5.imgsBig;
				var imgsCent5 = msg.data5.imgsCent;
				var imgsSmall5 = msg.data5.imgsSmall;
				
				//左侧中大图片属性赋值
				img_cent.attr("imgBig", imgBig1);
				img_cent.attr("src", imgsCent1);
				//左侧五个小图片赋值
				var small_Imgs = $("#body_top_left").children();
				var smallImgs1 = small_Imgs.eq(2).children();
				var smallImgs2 = small_Imgs.eq(3).children();
				var smallImgs3 = small_Imgs.eq(4).children();
				var smallImgs4 = small_Imgs.eq(5).children();
				var smallImgs5 = small_Imgs.eq(6).children();
				
				smallImgs1.attr("imgBig", imgBig1);
				smallImgs1.attr("imgCent", imgsCent1);
				smallImgs1.attr("src", imgsSmall1);
				
				smallImgs2.attr("imgBig", imgBig2);
				smallImgs2.attr("imgCent", imgsCent2);
				smallImgs2.attr("src", imgsSmall2);
				
				smallImgs3.attr("imgBig", imgBig3);
				smallImgs3.attr("imgCent", imgsCent3);
				smallImgs3.attr("src", imgsSmall3);
				
				smallImgs4.attr("imgBig", imgBig4);
				smallImgs4.attr("imgCent", imgsCent4);
				smallImgs4.attr("src", imgsSmall4);
				
				smallImgs5.attr("imgBig", imgBig5);
				smallImgs5.attr("imgCent", imgsCent5);
				smallImgs5.attr("src", imgsSmall5);
			}
		});
	});
	// 尺码选择
	var chima = $(".chima p");
	chima.click(function() {
		chima.css("border", "#DCDCDC 1px solid");
		$(this).css("border", "red 1px solid");
		$.ajax({
			type : "POST",
			url : "registServlet",
			data : "userName=" + userName,
			dataType : "text",
			success : function(msg) {
				console.log(msg);
			}
		});
	});

	// 数量选择
	var inputShu = $(".shuliang input");

	var jianhao = $("#jianhao");
	var jiahao = $("#jiahao");
	jianhao.click(function() {
		var jianshu = inputShu.val();
		var intjianshu = parseInt(jianshu);
		if (intjianshu > 1) {
			inputShu.val(intjianshu - 1);
		}
	});
	jiahao.click(function() {
		var jiashu = inputShu.val();
		var intjiashu = parseInt(jiashu);
		inputShu.val(intjiashu + 1);
	});

	// 右下导航栏效果
	var leibie = $(".leibie");
	leibie.mouseenter(function() {
		$(this).trigger("click");
	});

});