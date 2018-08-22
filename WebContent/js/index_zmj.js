$(function() {
	/*侧边栏的滑入滑出*/
	$('.bar-icon').mouseenter(function(){
		var index = $(this).attr('value');
		$('.right-show-content-2').hide();
		$('.right-show-content-3').hide();
		$('.right-show-content-4').hide();
		$('.right-show-content-5').hide();
		$('.right-show-content-1').hide();
		$('.right-show-content-'+index).show();
		$("#right-sidebar").animate({right: 0 },400);
	});
	$('#right-sidebar').mouseleave(function(){
		$("#right-sidebar").animate({right: -200 },400);
	});	
});
