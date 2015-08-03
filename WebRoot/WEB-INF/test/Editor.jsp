<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>文本编辑器</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript">
	$(function(){
		$d = $("#editor")[0].contentWindow.document;//IE\FF都兼容
		$d.designMode="on";
		$d.contentEditable = true;
		$d.open();
		$d.close();
		$("body",$d).append("<div>A</div><div>B</div><div>C</div>");
		
		$("#insert_img").click(function(){
			//在iframe中插入一张图片
			var img = '<img src="' + $('#path').val() +'" />';
			$("body",$d).append(img);
		});
		
		$("#preview").click(function(){
			//获取iframe的body内容，用于显示或者插入到数据库
			alert($('#editor').contents().find('body').html());
			$('#preview_area').html($('#editor').contents().find('body').html());
		});
	})
	</script>
  </head>
  
  <body>
  	<div >
  		
  	</div>
    <p><iframe id="editor" width="600px" height="200px" sytle="border:solid 1px;"></iframe></p>
    <input type="text" id="path" value="http://www.divcss5.com/uploads/allimg/130125/1_130125220259_1.png"/>
    <input type="button" id="insert_img" value="插入图片"/>
    <input type="button" id="preview" value="预览"/>
    
    <p style="border:1px dashed #ccc;" id="preview_area"></p>
      
  </body>
</html>
