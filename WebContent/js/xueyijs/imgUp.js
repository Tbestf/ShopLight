$(function(){
	var delParent;
	var defaults = {
		fileType         : ["jpg","png","bmp","jpeg"],   // �ϴ��ļ�������
		fileSize         : 1024 * 1024 * 10                  // �ϴ��ļ��Ĵ�С 10M
	};
		/*���ͼƬ���ı���*/
	$(".file").change(function(){	 
		var idFile = $(this).attr("id");
		var file = document.getElementById(idFile);
		var imgContainer = $(this).parents(".z_photo"); //���ͼƬ�ĸ���Ԫ��
		var fileList = file.files; //��ȡ��ͼƬ�ļ�
		var input = $(this).parent();//�ı���ĸ���Ԫ��
		var imgArr = [];
		//�����õ���ͼƬ�ļ�
		var numUp = imgContainer.find(".up-section").length;
		var totalNum = numUp + fileList.length;  //�ܵ�����
		if(fileList.length > 4 || totalNum > 4 ){
			alert("�ϴ�ͼƬ��Ŀ�����Գ���4����������ѡ��");  //һ��ѡ���ϴ�����5�� �������Ѿ��ϴ�������ϴ��ĵ�������Ҳ�����Գ���5��
		}
		else if(numUp < 4){
			fileList = validateUp(fileList);
			for(var i = 0;i<fileList.length;i++){
			 var imgUrl = window.URL.createObjectURL(fileList[i]);
			     imgArr.push(imgUrl);
			 var $section = $("<section class='up-section fl loading'>");
			     imgContainer.prepend($section);
			 var $span = $("<span class='up-span'>");
			     $span.appendTo($section);
			
		     var $img0 = $("<img class='close-upimg'>").on("click",function(event){
				    event.preventDefault();
					event.stopPropagation();
					$(".works-mask").show();
					delParent = $(this).parent();
				});   
				$img0.attr("src","images/xueyi/a7.png").appendTo($section);
		     var $img = $("<img class='up-img up-opcity'>");
		         $img.attr("src",imgArr[i]);
		         $img.appendTo($section);
		     var $p = $("<p class='img-name-p'>");
		         $p.html(fileList[i].name).appendTo($section);
		     var $input = $("<input id='taglocation' name='taglocation' value='' type='hidden'>");
		         $input.appendTo($section);
		     var $input2 = $("<input id='tags' name='tags' value='' type='hidden'/>");
		         $input2.appendTo($section);
		      
		   }
		}
		setTimeout(function(){
             $(".up-section").removeClass("loading");
		 	 $(".up-img").removeClass("up-opcity");
		 },450);
		 numUp = imgContainer.find(".up-section").length;
		if(numUp >= 4){
			$(this).parent().hide();
		}
	});
	
	
   
    $(".z_photo").delegate(".close-upimg","click",function(){
     	  $(".works-mask").show();
     	  delParent = $(this).parent();
	});
		
	$(".wsdel-ok").click(function(){
		$(".works-mask").hide();
		var numUp = delParent.siblings().length;
		if(numUp < 5){
			delParent.parent().find(".z_file").show();
		}
		 delParent.remove();
	});
	
	$(".wsdel-no").click(function(){
		$(".works-mask").hide();
	});
		
		function validateUp(files){
			var arrFiles = [];//�滻���ļ�����
			for(var i = 0, file; file = files[i]; i++){
				//��ȡ�ļ��ϴ��ĺ�׺��
				var newStr = file.name.split("").reverse().join("");
				if(newStr.split(".")[0] != null){
						var type = newStr.split(".")[0].split("").reverse().join("");
						console.log(type+"===type===");
						if(jQuery.inArray(type, defaults.fileType) > -1){
							// ���ͷ��ϣ������ϴ�
							if (file.size >= defaults.fileSize) {
								alert(file.size);
								alert('�����"'+ file.name +'"�ļ���С����');	
							} else {
								// ��������Ҫ�жϵ�ǰ�����ļ���
								arrFiles.push(file);	
							}
						}else{
							alert('�����"'+ file.name +'"�ϴ����Ͳ�����');	
						}
					}else{
						alert('�����"'+ file.name +'"û������, �޷�ʶ��');	
					}
			}
			return arrFiles;
		}
})
