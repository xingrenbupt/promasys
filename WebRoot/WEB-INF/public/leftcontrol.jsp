<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/leftcontrol.css">
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>
	
  </head>
  
  <body>
	<div class="controlpanel">
		<div class="proHome">
			<a id="prohome" class="font2" href="javascript:void(0);" onclick='changeUI(this)'>��Ŀ��ҳ</a>
		</div>
		<div class="proCSS">
			<a id="crewman" class="font3" href="javascript:void(0);" onclick='changeUI(this)'>��Ա����</a>
		</div>
		<div class="proCSS">
			<a id="docman" class="font3" href="javascript:void(0);" onclick='changeUI(this)'>�ļ�����</a>
		</div>
		<div class="proCSS">
			<a id="" class="font3" href="/promasys/forum.do?flag=ForumUI">������</a>
		</div>
		<div class="proCSS">
			<a id="" class="font3" href="javascript:void(0);" onclick='changeUI(this)'>֪ͨ��</a>
		</div>
		<div class="userHome">
			<a id="userhome" class="font2" href="javascript:void(0);" onclick='changeUI(this)'>������ҳ</a>
		</div>
		<div class="userCSS">
			<a id="info" class="font3" href="javascript:void(0);" onclick='changeUI(this)' >�û�����</a>
		</div>
		<div class="userCSS">
			<a id="upload" class="font3" href="javascript:void(0);" onclick='changeUI(this)'>�ļ�����</a>
		</div>
		<!-- 
		<div class="document">
			<span class="font2">�ļ�����</span>
		</div>
		<div class="uploadDoc">
			<a id="upload" class="font3" href="javascript:void(0);" onclick='changeUI(this)'>�ϴ��ļ�</a>
		</div>
		<div class="forum">
			<span class="font2">������</span>
		</div>
		<div class="notification">
			<span class="font2">֪ͨ����</span>
		</div>
		 -->
	</div>
  </body>
</html>
