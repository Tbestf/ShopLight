$(document).ready(function(){
	//alert("您好，欢迎来到Jquery！"); 
	//class="tab_title"同辈后所有class!='tab_total'的td元素
	$(".tab_title~td[class!='tab_total']").click(function(){
		$(".tab_title~td[class!='tab_total']").css("background-color","");
		$(this).css("background-color","blue");
	});
	var td_list = $(".tab_total_x").siblings();
	alert(td_list.size());
	
	
	
	$(".tab_total_y").html(9);
	$(".tab_total_x").html(10);
});