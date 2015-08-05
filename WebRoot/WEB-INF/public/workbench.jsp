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
    	<!-- ��Ŀ��ҳ -->
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
	    				<td class="tablecontent">����¼IP:${loginAddress}</td>
	    			</tr>
	    		</table>
	    	</div>
	    	<div class="staffList">
	    		<div class="title"><label>������Ա����</label></div>
	    		<table width=400px; frame="void" rules="rows" bordercolor="#B4D3EF">
	    			<tr>
	    			<td  height=25px;>
	    				<div style="width:100%;">
		    				<table width=100% rules="rows" style="font-weight:bold" >
			    				<tr style="text-align: center;">
			    					<td width="100">����</td>
			    					<td width="60">�꼶</td>
			    					<td width="225">����</td>
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
	    				<td>${docNum}</td>
	    				<td>${docNum}</td>
	    				<td>${docNum}</td>
	    			</tr>
	    		</table>
	    	</div>
	    	<div class="meeting">
	    		<div  class="title"><label>���鰲��</label></div>
	    		<table frame="void" rules="rows" bordercolor="#B4D3EF">	
	    			<tr class="title1">
	    				<td>����</td>
	    				<td>ʱ��</td>
	    				<td>�ص�</td>
	    				<td>��Ա</td>
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
	    				<td style="width:500px;font-weight:bold;">�������</td>
	    				<td style="font-weight:bold;">�����չ</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<table style="width: 500px;" frame="void" rules="all">
	    						<tr>
	    							<td style="width:90px;height:200px;">��������:</td>
	    							<td>
	    								<span style="padding-left:3px;">ģ�ָ���ϵͳ��ģʽ������ת���븴�û��Ƽ�����</span><br/>
	    								<img alt="principle" width=300px; height=150px; align="bottom"
	    									src="/promasys/documents/1/jpg/principle.jpg">
	    							</td>
	    						</tr>
	    						<tr>
	    							<td style="width:90px;">��������:</td>
	    							<td>
	    								<ul style="list-style: none;padding-left:3px;">
		    								<li>�������о�Ŀ�������</li>
											<li>1������һ�ױ���ģʽת��������ģʽ�ֲ�ʱ��������ģ�ͣ��ܹ���ʾ�ⳡ��������ģʽ���ƻ��Ƶ��໥���ù��ɡ�</li>
											<li>2�����Ƴ�������ģ����ͨ��ϵͳ��ģʽ������ģʽת����ģʽ����/�⸴��ģ�飬ģʽת������ȴﵽ15dB���ϣ���֧��6������ģʽ�ĸ���/�⸴�á�</li>
											<li>3�����Ƴ��ܹ�ʵ����ģ�������ģDFB�뵼�弤����оƬ��</li>
											<li>4��������ģ������������Ϸ�װ������</li>
										</ul>
									</td>
	    						</tr>
	    					</table>
	    				</td>
	    				<td style="text-align:top;">�˴�չʾ��Ŀ���½�չ</td>
	    			</tr>
	    		</table>
	    	</div>
	    	<div class="timeShaft" style="display:none;">
	    		
	    	</div>	    	
	    </div>
    </div>
  </body>
</html>
