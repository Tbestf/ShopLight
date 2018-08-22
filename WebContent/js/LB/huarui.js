$(function(){
     //声明一个成员变量用于计数单个按钮双击两次
	 var js= 0;
     //(通过数据库查询出默认地址为元素赋值插入到第一个li中)查询出ul中第一个LI的默认地址加入样式
	 /*var liobj = $(".site_s li:first-child");
	  liobj.css("border","1px solid red");
	   var pobj= $(liobj).children(".dz");
			pobj.val("默认地址");*/
	   
	 //刚加载页面为地址添加背景图片
	  //$(".gouss").css("background-image","url(images/xz.jpg)");	  
	  //为选择地址添加样式
	  /*$(".name_s img").attr("src","images/xz.jpg");
	  $(".site_s li").css({cursor:"pointer"})*/
	   //为地址栏添加点击事件
	  /*$(".site_s li").click(function(){
		    $(".site_s .dz").val("");
			var pobj= $(this).children(".dz");
			pobj.val("默认地址");
	       // alert(pobj.val());
			//先去除LI里的所有边线
			$(".site_s li").removeAttr("style");
			$(this).css({cursor:"pointer"});
	       $(this).css("border","1px solid red");
		    //先把li标签DIV全部隐藏
			//var divobj=$(".site_s li").find("img");
			   $(".site_s img").remove();
			   //$(".site_s img").css("display","none");
		      var aobj  =   $(this).find("a");
	       	 //在A标签之前添加DIV标签
			 aobj.before("<img></img>");
		  $(".site_s img").css({width:"29px",height:"32px",float:"right","margin-top":"38px"});
		  //$(".site_s div").css("background-image","url(images/xz.jpg)");
		  $(".site_s img").attr("src","images/xz.jpg");
		  	  });*/
 //是否使用积分点击切换图片事件
 $(".jf").click(function(){
      $(".jfee").fadeIn(500);
	  $(".jf").attr("src");
	   var onobj ="images/jia.png"
	   var offobj= "images/jian.png"
	   if( $(".jf").attr("src") == onobj){
	     $(".jf").attr("src",offobj);
	   }else{
	    $(".jf").attr("src",onobj);
	    $(".jfee").fadeOut(500);
	   }
 });
  //配送信息点击事件
  $(".give_fs").click(function(){
     $(this).removeAttr("style");
     //移动鼠标样式
	 $(this).css({cursor:"pointer"})
	   $(this).css("border","5px solid red"); 
	$(".give_fs img").remove();
	//$(".give_fs img").css("display","none");
	var divdx= $(this).append("<img></img>");
	  $(".give_fs img").css({width:"29px",height:"32px",float:"right","margin-top":"8px"});
	 // $(".give_fs div").css("background-image","url(images/xz.jpg)");
	  $(".give_fs img").attr("src","images/xz.jpg");
	  //alert($(".give_fs img").attr("src"));
	  var  imgobj =$(".give_fs img").attr("src");
	  var  imgsrc="images/xz.jpg"  
	  js++;
	  //如果点击了两次
	   if(js%2 == 0){
	     //隐藏红勾
		 $(".give_fs img").css("display","none");
	 //alert($(".give_fs img").attr("src"));
	 //alert(js);
	     //还原边线
		 $(".give_fs").css({border:"5px solid black"});
	 };
  });




});

