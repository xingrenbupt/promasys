<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>������</title>
    
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
    	<div class="topic_frame">
    		<div style="font-size:24px; font-weight:bold; background-color:#EBEBEB">�����������б�</div>
    		<a type="submit" href="/promasys/posting.do?flag=postingUI" 
    			style="font-size:32px; font-weight:bold;background-color:#00B5CF;margin-left:5px;">����</a>
    		<table frame="none" rules="rows" bordercolor="#B4D3EF" style="width:100%;">
    			<tr class="title1" >
    				<td style="width:50%;height:30px;">����</td>
					<td>����/ʱ��</td>
					<td>�ظ�</td>
    			</tr>
    			<c:forEach var="topic" items="${topiclist}">
    			<tr>
    				<td>
						<a id="${topic.id}" class="??" href="/promasys/reply.do?flag=replyUI&topicId=${topic.id}">${topic.name }</a>
					</td>
					<td>${topic.users.name}/${topic.postTime}</td>
					<td>${topic.replyNum}</td>
    			</tr>
    			</c:forEach>
    		</table>
    	</div>
    	<div class="">
    		
    	</div>
    	<div class="editor_frame" style="display:none;">
    		<iframe id="editor" width="100%" height="45%" style="border:solid 1px;"></iframe>
    		<input type="text" id="path" value="http://www.divcss5.com/uploads/allimg/130125/1_130125220259_1.png"/>
    		<input type="button" id="insert_img" value="����ͼƬ"/>
    		<input type="button" id="preview" value="Ԥ��"/>
    		<input type="button" id="submit" value="����" onclick="saveContent"/>
    		
    		<p style="border:1px dashed #ccc;" id="preview_area"></p>
    	</div>
    </div>
    
  </body>
</html>
