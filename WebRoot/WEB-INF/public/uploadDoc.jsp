<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�ϴ��ļ�</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/uploadDoc.css">
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>

  </head>
  
  <body>
   	<jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="leftcontrol.jsp"></jsp:include>
    <div class="main_frame">
    	<div class="UploadDocUI">
    		<form action="/promasys/proDoc.do?flag=uploadDoc" method="post" enctype="multipart/form-data">
	    		<div class="UploadDocFrame">
	    			<div style="background-color: #E7E7E7;">
	    				<div style="font-size: 24px; font-weight: bold;line-height: 48px;">�ϴ��ļ�</div>
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
    </div> 
  </body>
</html>
