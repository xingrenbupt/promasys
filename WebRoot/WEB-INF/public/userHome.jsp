<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>个人主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/userHome.css">
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>

  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="leftcontrol.jsp"></jsp:include>
    <div class="main_frame">
	    <div class="homeUI">
	    	<div class="homeFrame">
	    		<table>
	    			<tr>
	    				<td width=150px;><img src="/promasys/documents/${loginuser.id }/jpg/${loginuser.photo}"
	   						 width="150" height="150"/>
	   					</td>
	    				<td height="150">
	    					<table height=100%;>
	    						<tr>
				    				<td width="50px;">姓名:</td>
				    				<td>${loginuser.name}</td>
				    				<td width="50px;">心情:</td>
				    				<td>哎哟，不错哦！！！</td>
					    		</tr>
					    		<tr>
				    				<td>年级:</td>
				    				<td>${loginuser.level}</td>
					    		</tr>
					    		<tr>
				    				<td>邮箱:</td>
				    				<td>${loginuser.email}</td>
					    		</tr>
	    					</table>
	    				</td>
	    			</tr>	
	    		</table>
	    		<br/>
	    		<div style="font-size:24px;font-weight:bold;">已上传文件</div>
	    		<table rules="all">
	    			<tr>
	    				<td>文件名</td>
	    				<td>上传日期</td>
	    				<td>下载次数</td>
	    			</tr>
	    			<c:forEach var="doc" items="${doclist}">
	    				<tr>
	    					<td>${doc.name}</td>
	    					<td>${doc.uploadDate}</td>
	    					<td>${doc.downloadTimes}</td>
	    				</tr>
	    			</c:forEach>
	    		</table>
	    		<br/>
	    		<div style="font-size:24px;font-weight:bold;">已发帖</div>
	    		<table rules="all">
	    			<tr>
	    				<td>主题</td>
	    				<td>时间</td>
	    				<td>回复</td>
	    			</tr>
	    			<c:forEach var="topic" items="${topiclist}">
	    			<tr>
	    				<td>
	    					<a href="/promasys/reply.do?flag=replyUI&topicId=${topic.id}">${topic.name }</a>
	    				</td>
	    				<td>${topic.postTime}</td>
						<td>${topic.replyNum}</td>
	    			</tr>
	    			</c:forEach>
	    		</table>	
	    	</div>
	    </div>
    </div>
  </body>
</html>
