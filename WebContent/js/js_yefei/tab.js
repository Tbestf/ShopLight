function setTab(name, cursel, n,cssStyle){
	for(i=1; i<=n; i++){
		if(i==cursel){
			$("#con_"+name +"_"+ i).addClass("user-order-list");
		}else{
			$("#con_"+name +"_"+ i).removeClass("user-order-list");
		}
		$("#"+name + i).removeClass(cssStyle);
		//var menu = document.getElementById("con_"+name +"_"+ i);
		//menu.className = (i == cursel ? "user-order-list" : ""); 	
		var con = document.getElementById("con_" + name + "_" + i);
		con.style.display = (i === cursel ? "block" : "none");
	}
	$("#"+name + cursel).addClass(cssStyle);
}
