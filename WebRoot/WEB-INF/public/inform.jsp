<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>通知区</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/inform.css">
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>

  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="leftcontrol.jsp"></jsp:include>
    <div class="main_frame">
	    <div class="informUI">
	    	<div class="informFrame">
	    		<div style="font-size:24px; font-weight:bold">会议安排</div>
	    		<table style="width:600px; height:45px;" frame="box" rules="rows" bordercolor="#B4D3EF">
	    			<tr class="">
	    				<td>主题</td>
	    				<td>时间</td>
	    				<td>地点</td>
	    				<td>成员</td>
	    			</tr>
	    			<tr>
	    				<td>${meeting.topic}</td>
	    				<td>${meeting.time}</td>
	    				<td>${meeting.site}</td>
	    				<td>${meeting.staffs}</td>
	    			</tr>
	    		</table>
	    		<br/>
	    		<br/>
	    		<div style="font-size:24px; font-weight:bold">安排会议</div>
	    		<form action="/promasys/inform.do?flag=meeting" method="post">
		    		<table style="width:600px; height:45px;" frame="box" rules="all" bordercolor="#B4D3EF">
		    			<tr>
		    				<td width=130px; style="text-align:right;">输入会议主题：</td>
		    				<td><input name="topic" style="width:300px;"/></td>
		    			</tr>
		    			<tr>
		    				<td width=130px; style="text-align:right;">输入会议时间：</td>
		    				<td><input name="time" style="width:300px;"></td>
		    			</tr>
		    			<tr>
		    				<td width=130px; style="text-align:right;">输入会议地点：</td>
		    				<td><input name="site" style="width:300px;"></td>
		    			</tr>
		    			<tr>
		    				<td width=130px; style="text-align:right;">输入与会人员：</td>
		    				<td><input name="staffs" style="width:300px;"></td>
		    			</tr>
		    			<tr>
		    				<td colspan="2">
		    					<input class="" style="margin-left:200px;" type="submit" value="确认">
		    					<input class="" style="margin-left:50px;" type="submit" value="取消">
		    				</td>
		    			</tr>
		    		</table>
	    		</form>
	    	</div>
	    </div>
	 </div>
	 <div>test</div>
  </body>
</html>
