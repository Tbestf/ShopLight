// JavaScript Document
$(function() {
	/* 导航菜单和导航二级菜单 */
	var num;
	$('#menu-bar>div[id]').hover(function() {
		var obj = $(this).attr('id');
		num = obj.substring(5, obj.length);
		$('#box-' + num).slideDown(250);
	}, function() {
		$('#box-' + num).hide();
	});
	$('.hidden-box').hover(function() {
		$(this).show();
	}, function() {
		$(this).slideUp(250);
	});

	/* 全部分类菜单 */
	$('#all-category').hover(function() {
		$('#all-category-content').slideDown(250);
	}, function() {
		$('#all-category-content').hide();
	});
	$('#all-category-content').hover(function() {
		$(this).show();
	}, function() {
		$(this).slideUp(250);
	});
	
	/*搜索功能*/
	/*$('#search-btn').click(function(){
		var strText = $('.form-control').val();
		 $.ajax({
		   type: "POST",
		   url: "warestype.action?method=waresTypeShow",
		   data: "wtName="+strText+"",
		   success: function(data){
			    console.info('搜索成功');
			  }

		 });
	});*/
	$('#search-btn').click(function(){
		console.log("进入");
		var text = $('#search-key').val();
		console.log("--"+text);
		$('#ahref').attr('href',"warestype.action?method=waresTypeShow&wtName="+text);
		
	})
	
		
});
