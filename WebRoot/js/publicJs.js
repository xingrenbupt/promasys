//这是我们的一个js函数库

function changeStatus(obj){
//	window.alert("ok "+obj.value);
	if(obj.value=="worker"){
		$(".gra_spe").css("display","none");
		$(".worker_spe").css("display","table-row");
	}else if(obj.value=="graduate"){
		//jquery根据class去寻找控件集合
//		$("#gra_type").css("display","block");
//		$("#gra_uni").css("display","block");
		$(".gra_spe").css("display","table-row");//注意不是block  http://developer.51cto.com/art/201009/226643.htm
		$(".worker_spe").css("display","none");
	}else if(obj.value=="midstu"){
	
	}else if(obj.value=="nothing"){
	
	}
};

function changeUI1(obj){
//	window.alert(obj.id);
	if(obj.id=="info"){
		$(".frame1").css("display","none");
		$(".frame2").css("display","none");
		$(".UserInfoUI").css("display","block");
		$(".UploadDocUI").css("display","none");
		$(".docManUI").css("display","none");
		$(".docManUI").css("display","none");
	}else if(obj.id=="upload"){
		$(".frame1").css("display","none");
		$(".frame2").css("display","none");
		$(".UploadDocUI").css("display","block");
		$(".UserInfoUI").css("display","none");
		$(".docManUI").css("display","none");
	}else if(obj.id=="prohome"){
		$(".UploadDocUI").css("display","none");
		$(".UserInfoUI").css("display","none");
		$(".frame1").css("display","block");
		$(".frame2").css("display","block");
		$(".docManUI").css("display","none");
	}else if(obj.id=="docman"){
		$(".UploadDocUI").css("display","none");
		$(".UserInfoUI").css("display","none");
		$(".frame1").css("display","none");
		$(".frame2").css("display","none");
		$(".docManUI").css("display","block");
	}else if(obj.id=="crewman"){
		$(".UploadDocUI").css("display","none");
		$(".UserInfoUI").css("display","none");
		$(".frame1").css("display","none");
		$(".frame2").css("display","none");
		$(".docManUI").css("display","none");
		$(".crewManUI").css("display","block");
	}
	
}

function changeUI(obj){
//	window.alert(obj.id);
	$(".UploadDocUI").css("display","none");
	$(".UserInfoUI").css("display","none");
	$(".frame1").css("display","none");
	$(".frame2").css("display","none");
	$(".docManUI").css("display","none");
	$(".crewManUI").css("display","none");
	$(".UserHomeUI").css("display","none");
	
	if(obj.id=="info"){
		$(".UserInfoUI").css("display","block");
	}else if(obj.id=="upload"){
		$(".UploadDocUI").css("display","block");
	}else if(obj.id=="prohome"){
		$(".frame1").css("display","block");
		$(".frame2").css("display","block");
	}else if(obj.id=="docman"){
		$(".docManUI").css("display","block");
	}else if(obj.id=="crewman"){
		$(".crewManUI").css("display","block");
	}else if(obj.id=="home"){
		$(".frame1").css("display","block");
		$(".frame2").css("display","block");
	}else if(obj.id=="userhome"){
		$(".UserHomeUI").css("display","block");
	}
	
}