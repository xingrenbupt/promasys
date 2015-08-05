<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>项目进展管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/workbench.css">
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>
	
  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="leftcontrol.jsp"></jsp:include>
    <div class="main_frame">
    	<!-- 项目主页 -->
	    <div class="frame1">
	    	<div class="userInfoTable">
	    		<div class="title"><label>用户信息</label></div>
	    		<table frame="void" rules="rows" bordercolor="#B4D3EF">
	    			<tr>
	    				<td class="tablecontent">欢迎您，${loginuser.name} (邮箱：${loginuser.email})</td>
	    			</tr>
	    			<tr>
	    				<td class="tablecontent">最后登录时间:${loginuser.loginDate}</td>
	    			</tr>
	    			<tr>
	    				<td class="tablecontent">最后登录IP:${loginAddress}</td>
	    			</tr>
	    		</table>
	    	</div>
	    	<div class="staffList">
	    		<div class="title"><label>课题人员名单</label></div>
	    		<table width=400px; frame="void" rules="rows" bordercolor="#B4D3EF">
	    			<tr>
	    			<td  height=25px;>
	    				<div style="width:100%;">
		    				<table width=100% rules="rows" style="font-weight:bold" >
			    				<tr style="text-align: center;">
			    					<td width="100">姓名</td>
			    					<td width="60">年级</td>
			    					<td width="225">邮箱</td>
			    					<td width="15">&nbsp;</td>
			    				</tr>
		    				</table>
	    				</div>
	    			</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<div style="overflow-y:auto; width:100%;height:93px">
	    						<table width=100% rules="rows">
					    			<c:forEach var="staff" items="${stafflist}" varStatus="vs">
					    			<tr style="text-align: center;">
					    				<td width="100" height=25px>${staff.name}</td>
					    				<td width="70">${staff.level}</td>
					    				<td width="233">${staff.email}</td>
					    			</tr>
					    			</c:forEach>
				    			</table>
			    			</div>
		    			</td>
	    			</tr>
	    		</table>
	    	</div>
	    	<div class="statisticsTable">
	    		<div class="title"><label>统计信息</label></div>
	    		<table frame="void" rules="rows" bordercolor="#B4D3EF">	
	    			<tr class="title1">
	    				<th>项目</th>
	    				<th>总计</th>
	    				<th>本周</th>
	    				<th>本月</th>
	    			</tr>
	    			<tr class="title1" style="text-align: center;">
	    				<th>文件</th>
	    				<td>${docNum}</td>
	    				<td>${docNum}</td>
	    				<td>${docNum}</td>
	    			</tr>
	    		</table>
	    	</div>
	    	<div class="meeting">
	    		<div  class="title"><label>会议安排</label></div>
	    		<table frame="void" rules="rows" bordercolor="#B4D3EF">	
	    			<tr class="title1">
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
	    	</div>
	    </div>
	    <div class="frame2">
	    	<div class="introduction">
	    		<table frame="box" rules="all">
	    			<tr style="height: 30px;">
	    				<td style="width:500px;font-weight:bold;">课题介绍</td>
	    				<td style="font-weight:bold;">课题进展</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<table style="width: 500px;" frame="void" rules="all">
	    						<tr>
	    							<td style="width:90px;height:200px;">课题名称:</td>
	    							<td>
	    								<span style="padding-left:3px;">模分复用系统中模式产生、转换与复用机制及控制</span><br/>
	    								<img alt="principle" width=300px; height=150px; align="bottom"
	    									src="/promasys/documents/1/jpg/principle.jpg">
	    							</td>
	    						</tr>
	    						<tr>
	    							<td style="width:90px;">课题内容:</td>
	    							<td>
	    								<ul style="list-style: none;padding-left:3px;">
		    								<li>本课题研究目标包括：</li>
											<li>1）建立一套表征模式转换过程中模式分布时空特征的模型，能够揭示光场各参数与模式控制机制的相互作用规律。</li>
											<li>2）研制出用于少模光纤通信系统的模式激励、模式转换与模式复用/解复用模块，模式转换消光比达到15dB以上；可支持6个以上模式的复用/解复用。</li>
											<li>3）研制出能够实现少模输出的少模DFB半导体激光器芯片。</li>
											<li>4）掌握少模复用器件的耦合封装方法。</li>
										</ul>
									</td>
	    						</tr>
	    					</table>
	    				</td>
	    				<td style="text-align:top;">此处展示项目最新进展</td>
	    			</tr>
	    		</table>
	    	</div>
	    	<div class="timeShaft" style="display:none;">
	    		
	    	</div>	    	
	    </div>
    </div>
  </body>
</html>
