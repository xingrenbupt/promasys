<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>文件管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/proDoc.css">
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>

  </head>
  
  <body>
	<jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="leftcontrol.jsp"></jsp:include>
    <div class="main_frame">
	    <div class="proDocUI">
	    	<div class="proDocFrame">
	    	<div style="font-size: 24px; font-weight: bold;line-height: 32px; background-color: #E7E7E7;">项目文件目录</div>
	    		<table width="100%" frame="box" rules="all" bordercolor="black">
    				<tr style="text-align: center">
    					<td style="width:25%">文件名称</td>
    					<td style="width:25%">上传用户</td>
    					<td style="width:35%">上传时间</td>
    					<td style="width:10%">下载次数</td>
    					<td style="width:5%"></td>
    				</tr>
    				<c:forEach var="prodoc" items="${prodoclist}" varStatus="vs">
    				<tr style="text-align: center">
    					<td>
    						<span>${prodoc.name}</span>
    					</td>
    					<td>
    						<span>${prodoc.users.name}</span>
    					</td>
    					<td>
    						<span>${prodoc.uploadDate}</span>
    					</td>
    					<td>
    						<span>${prodoc.downloadTimes}</span>
    					</td>	
    					<td>
    						<a href="<%=basePath%>documents/${prodoc.users.id}/${prodoc.type}/${prodoc.name}">下载</a>
    					</td>			
    				</tr>
    				</c:forEach>
    			</table>
	    	</div>
	    </div>
	</div>
  </body>
</html>
