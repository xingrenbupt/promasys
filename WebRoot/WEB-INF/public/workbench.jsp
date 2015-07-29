<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
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
	    		<div class="title"><label>�û���Ϣ</label></div>
	    		<table frame="void" rules="rows" bordercolor="#B4D3EF">
	    			<tr>
	    				<td class="tablecontent">��ӭ����${loginuser.name} (���䣺${loginuser.email})</td>
	    			</tr>
	    			<tr>
	    				<td class="tablecontent">����¼ʱ��:${loginuser.loginDate}</td>
	    			</tr>
	    			<tr>
	    				<td class="tablecontent">����¼IP:</td>
	    			</tr>
	    		</table>
	    	</div>
	    	<div class="actorList">
	    		<div class="title"><label>������Ա����</label></div>
	    		<table frame="void" rules="rows" bordercolor="#B4D3EF">
	    			<tr>
	    				<th>����</th>
	    				<th>�꼶</th>
	    				<th>����</th>
	    			</tr>
	    			<tr style="text-align: center;">
	    				<td>����</td>
	    				<td>�ж�</td>
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
	    		<div class="title"><label>ͳ����Ϣ</label></div>
	    		<table frame="void" rules="rows" bordercolor="#B4D3EF">	
	    			<tr class="title1">
	    				<th>��Ŀ</th>
	    				<th>�ܼ�</th>
	    				<th>����</th>
	    				<th>����</th>
	    			</tr>
	    			<tr class="title1" style="text-align: center;">
	    				<th>�ļ�</th>
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
	    <!-- ��Ա���� -->
	    <div class="crewManUI">
	    	<div class="crewList">
	    		<table width="100%" frame="box" rules="all" bordercolor="black">
	    			<tr style="text-align: center">
						<td style="width:15%">ͷ��</td>
	   					<td style="width:15%">����</td>
	   					<td style="width:15%">ְ��</td>
	   					<td style="width:20%">����</td>
	   					<td style="width:20%">�ֻ�</td>	   					
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
	    				<h style="font-size: 24px; font-weight: bold;line-height: 48px;">�ϴ�ͷ��</h>
	    		</div>
    			<div style="background-color: #DFDFDF;width:100%">
	    			<input type="file" name="myPhoto">
	    		</div>
	    		<div>
	    			<input style="float: left;" type="submit" value="�ϴ�ͷ��">
	    		</div>
    		</div>
    		</form>
    	</div>
    	<div class="UploadDocUI">
    		<form action="/promasys/uploadDoc.do?flag=uploadDoc" method="post" enctype="multipart/form-data">
	    		<div class="UploadDocFrame">
	    			<div style="background-color: #E7E7E7;">
	    				<h style="font-size: 24px; font-weight: bold;line-height: 48px;">�ϴ��ļ�</h>
	    			</div>
	    			<div class="uploadListFrame">
	    				<div style="font-size: 24px;background-color: #9F5C53;line-height: 24px; width:100%">�ϴ��ļ��б�</div>
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
		    			<li>�����ϴ����ļ���չ���� txt,rtf,pdf,doc,docx,xls,xlsx,zip,rar,jpg,jpeg,png,gif,ppt,pptx</li>
		    			<li>�����ϴ����ļ���С�� 20 Mb</li>
						<li>�ϴ��������벻Ҫ�رյ�ǰ���ڡ� </li>
						<br/>
						<li>
							<input style="float: left;" type="submit" value="�ϴ��ļ�">
						</li>
	    			</ul>	
	    		</div>
    		</form>
    	</div>
    	<div class="docManUI">
    		<div class="docList">
    			<table width="100%" frame="box" rules="all" bordercolor="black">
    				<tr style="text-align: center">
    					<td style="width:25%">�ļ�����</td>
    					<td style="width:25%">�ϴ��û�</td>
    					<td style="width:35%">�ϴ�ʱ��</td>
    					<td style="width:10%">���ش���</td>
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
    						<a href="<%=basePath%>documents/${prodoc.users.id}/${prodoc.type}/${prodoc.name}">����</a>
    					</td>			
    				</tr>
    				</c:forEach>
    			</table>
    		</div>
    	</div>
    </div>
  </body>
</html>
