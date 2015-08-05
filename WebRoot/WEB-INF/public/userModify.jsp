<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/userModify.css">
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>

  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="leftcontrol.jsp"></jsp:include>
    <div class="main_frame">
	    <div class="modifyUI">
	    	<div class="modifyFrame">
		    	<form action="/promasys/proDoc.do?flag=uploadPhoto" method="post" enctype="multipart/form-data">
	    			<div style="background-color: #E7E7E7;">
		    				<h style="font-size: 24px; font-weight: bold;line-height: 32px;">上传头像</h>
		    		</div>
		    		<br/>
		    		<br/>
	    			<div style="background-color: #DFDFDF;width:100%">
		    			<input type="file" name="myPhoto">
		    		</div>
		    		<div>
		    			<input style="float: left;" type="submit" value="上传头像">
		    		</div>
    			</form>
	    	</div>
	    </div>
	</div>
  </body>
</html>
