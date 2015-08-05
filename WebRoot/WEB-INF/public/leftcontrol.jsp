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
			<a id="" class="font2" href="/promasys/home.do?flag=ProHome">项目主页</a>
		</div>
		<div class="proCSS">
			<a id="" class="font3" href="/promasys/staff.do?flag=StaffUI">项目人员</a>
		</div>
		<div class="proCSS">
			<a id="" class="font3" href="/promasys/proDoc.do?flag=DocUI">项目文件</a>
		</div>
		<div class="proCSS">
			<a id="" class="font3" href="/promasys/forum.do?flag=ForumUI">讨论管理</a>
		</div>
		<div class="proCSS">
			<a id="" class="font3" href="/promasys/inform.do?flag=InformUI">通知管理</a>
		</div>
		<div class="userHome">
			<a id="" class="font2" href="/promasys/home.do?flag=UserHome">个人主页</a>
		</div>
		<div class="userCSS">
			<a id="" class="font3" href="/promasys/staff.do?flag=UserModifyUI">修改信息</a>
		</div>
		<div class="userCSS">
			<a id="" class="font3" href="/promasys/proDoc.do?flag=uploadDocUI">上传文件</a>
		</div>
	</div>
  </body>
</html>
