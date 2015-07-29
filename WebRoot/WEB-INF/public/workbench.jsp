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
	    				<td class="tablecontent">最后登录IP:</td>
	    			</tr>
	    		</table>
	    	</div>
	    	<div class="actorList">
	    		<div class="title"><label>课题人员名单</label></div>
	    		<table frame="void" rules="rows" bordercolor="#B4D3EF">
	    			<tr>
	    				<th>姓名</th>
	    				<th>年级</th>
	    				<th>邮箱</th>
	    			</tr>
	    			<tr style="text-align: center;">
	    				<td>聂松</td>
	    				<td>研二</td>
	    				<td>niesong@bupt.edu.cn</td>
	    			</tr>
	    			<tr style="text-align: center;">
	    				<td>somebody</td>
	    				<td>any</td>
	    				<td>somebody@bupt.edu.cn</td>
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
	    				<td>1</td>
	    				<td>1</td>
	    				<td>1</td>
	    			</tr>
	    		</table>
	    	</div>
	    </div>
	    <div class="frame2">
	    	<div class="timeShaft">
	    		
	    	</div>
	    	<div class="documentList">
	    		<table  border="1">
	    			<tr>
	    				<th></th>
	    			</tr>
	    		</table>
	    	</div>
	    </div>
	    <!-- 人员管理 -->
	    <div class="crewManUI">
	    	<div class="crewList">
	    		<table width="100%" frame="box" rules="all" bordercolor="black">
	    			<tr style="text-align: center">
						<td style="width:15%">头像</td>
	   					<td style="width:15%">姓名</td>
	   					<td style="width:15%">职称</td>
	   					<td style="width:20%">邮箱</td>
	   					<td style="width:20%">手机</td>	   					
	   				</tr>
	   				<c:forEach var="crew" items="${crewlist}" varStatus="vs">
	   				<tr style="text-align: center">
	   					<td>
	   						<img src="/promasys/documents/${crew.id }/jpg/${crew.photo}"
	   						 width="50" height="50" />
	   					</td>
	   					<td>
	   						<span>${crew.name}</span>
	   					</td>
	   					<td>
	   						<span>${crew.level}</span>
	   					</td>
	   					<td>
	   						<span>${crew.email}</span>
	   					</td>
	   					<td>
	   						<span>${crew.mobile}</span>
	   					</td>				
	   				</tr>
	   				</c:forEach>
	    		</table>
	    	</div>
	    </div>
	    <div class="UserHomeUI">
	    	<div>
	    		
	    	</div>
	    </div>
    	<div class="UserInfoUI">
    		<form action="/promasys/uploadDoc.do?flag=uploadPhoto" method="post" enctype="multipart/form-data">
    		<div class="UploadHeadFrame">
    			<div style="background-color: #E7E7E7;">
	    				<h style="font-size: 24px; font-weight: bold;line-height: 48px;">上传头像</h>
	    		</div>
    			<div style="background-color: #DFDFDF;width:100%">
	    			<input type="file" name="myPhoto">
	    		</div>
	    		<div>
	    			<input style="float: left;" type="submit" value="上传头像">
	    		</div>
    		</div>
    		</form>
    	</div>
    	<div class="UploadDocUI">
    		<form action="/promasys/uploadDoc.do?flag=uploadDoc" method="post" enctype="multipart/form-data">
	    		<div class="UploadDocFrame">
	    			<div style="background-color: #E7E7E7;">
	    				<h style="font-size: 24px; font-weight: bold;line-height: 48px;">上传文件</h>
	    			</div>
	    			<div class="uploadListFrame">
	    				<div style="font-size: 24px;background-color: #9F5C53;line-height: 24px; width:100%">上传文件列表</div>
	    				<div class="uploadList">
	    				
	    				</div>
	    				<br/>
	    				<div style="background-color: #DFDFDF;width:100%">
	    					<input type="file" name="docFile">
	    				</div>
	    			</div>
	    			<br/>
	    			<br/>
	    			<ul style="float: left;">
		    			<li>允许上传的文件扩展名： txt,rtf,pdf,doc,docx,xls,xlsx,zip,rar,jpg,jpeg,png,gif,ppt,pptx</li>
		    			<li>允许上传的文件大小： 20 Mb</li>
						<li>上传过程中请不要关闭当前窗口。 </li>
						<br/>
						<li>
							<input style="float: left;" type="submit" value="上传文件">
						</li>
	    			</ul>	
	    		</div>
    		</form>
    	</div>
    	<div class="docManUI">
    		<div class="docList">
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
