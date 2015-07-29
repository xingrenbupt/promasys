<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>¿í¶È×ÔÊÊÓ¦1</title>
	<style type="text/css">
	.content{width:100%; height:800px; min-width:980px; width:expression_r((documentElement.clientWidth < 980) ? "980px" : "100%" ); }
	.left{width:24%; height:500px; background:#0066CC; float:left;}
	.center{width:50%; height:500px; float:left; margin-left:10px; background:#993300;}
	.right{width:24%; height:500px; float:right; margin-right:10px; background:#CC9900;}
	</style>
	</head>
	
	<body>
		<div class="content">
		<div class="left"></div>
		<div class="center"></div>
		<div class="right"></div>
		</div>
	</body>
</html>
