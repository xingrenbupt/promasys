<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>����</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/workbench.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/forum.css">
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>

	<script type="text/javascript">
	$(function(){
		$d = $("#editor")[0].contentWindow.document;//IE\FF������
		$d.designMode="on";
		$d.contentEditable = true;
		$d.open();
		$d.close();
		//$("body",$d).append("<div>A</div><div>B</div><div>C</div>");
		
		$("#insert_img").click(function(){
			//��iframe�в���һ��ͼƬ
			var img = '<img src="' + $('#path').val() +'" />';
			$("body",$d).append(img);
		});
		
		$("#preview").click(function(){
			//��ȡiframe��body���ݣ�������ʾ���߲��뵽���ݿ�
			alert($('#editor').contents().find('body').html());
			$('#preview_area').html($('#editor').contents().find('body').html());
		});
	})
	</script>
  </head>
  
  <body>
  	<jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="leftcontrol.jsp"></jsp:include>
    <div class="main_frame">
	    <div class="posting_frame">
	    	<form action="/promasys/posting.do?flag=ForumUI" method="post">
		    	<div style="font-size:24px; font-weight:bold;background-color:#E8E8E8;">��������</div>
		    	<div style="margin-left:20px;margin-top:30px;">
		    		<span style="font-size:20px;">��������</span>
		    		<input name="name" type="text" style="wight:50%;">
		    	</div>
		    	<div style="font-size:20px;margin-left:20px;margin-top:10px;">�������ݣ�</div>
		    	<div class="editor_frame">
		    		<textarea name="content" style="border:solid 1px;width:100%;" rows=15;></textarea>
		    		
		    		<input type="button" id="preview" value="Ԥ��"/>
		    		<input type="submit" id="submit" value="����"/>
		    		
		    		<p style="border:1px dashed #ccc;" id="preview_area"></p>
		    	</div>
	    	</form>
	    </div>
    </div>
  </body>
</html>
