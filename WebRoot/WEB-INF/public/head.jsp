<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>��Ŀ��չ����ϵͳ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/head.css">

  </head>
  	
  <body>
  	<div class="head">
  		<div style="float:left"><span class="font1">��Ŀ��չ����ϵͳ</span></div>	
  		<ul class="lianjie">
  			<li style="width:150"><a class="anavi" href="#">�û���:${loginuser.name}</a></li>
  			<li ><a id="home" class="anavi" href="javascript:void(0);" onclick="changeUI(this)">��ҳ</a></li>
  			<li ><a class="anavi" href="/promasys/login.do?flag=logout">ע��</a></li>
  		</ul>
  	</div>
  	<div class="head1">
  	</div>
  </body>
</html>
