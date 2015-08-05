<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>人员管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/staff.css">
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>

  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="leftcontrol.jsp"></jsp:include>
    <div class="main_frame">
	    <div class="staffUI">
	    	<div class="staffFrame">
	    	<div style="font-size: 24px; font-weight: bold;line-height: 32px; background-color: #E7E7E7;">项目成员名单</div>
	    	<table width="100%" frame="box" rules="all" bordercolor="black">
	    			<tr style="text-align: center">
						<td style="width:15%">头像</td>
	   					<td style="width:15%">姓名</td>
	   					<td style="width:15%">职称</td>
	   					<td style="width:20%">邮箱</td>
	   					<td style="width:20%">手机</td>	   					
	   				</tr>
	   				<c:forEach var="staff" items="${stafflist}" varStatus="vs">
	   				<tr style="text-align: center">
	   					<td>
	   						<img src="/promasys/documents/${staff.id }/jpg/${staff.photo}"
	   						 width="50" height="50" />
	   					</td>
	   					<td>
	   						<span>${staff.name}</span>
	   					</td>
	   					<td>
	   						<span>${staff.level}</span>
	   					</td>
	   					<td>
	   						<span>${staff.email}</span>
	   					</td>
	   					<td>
	   						<span>${staff.mobile}</span>
	   					</td>				
	   				</tr>
	   				</c:forEach>
	    		</table>
	    	</div>
	   	</div>
	 </div>
  </body>
</html>
