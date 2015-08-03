<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>回复</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/workbench.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/forum.css">
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>

  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="leftcontrol.jsp"></jsp:include>
    <div class="main_frame">
    	<div class="reply_frame">
    		<div style="font-size:24px; font-weight:bold; background-color:#EBEBEB">${postsName}</div>
    		<a type="submit" href="/promasys/posting.do?flag=postingUI" 
    			style="font-size:32px; font-weight:bold;background-color:#00B5CF;margin-left:5px;">发帖</a>
    		<form action="/promasys/reply.do?flag=reply" method="post">
	    		<div style="width:98%;">
	    			<table frame="none" rules="rows" bordercolor="#B4D3EF" style="width:100%">
	    				<tr>
	    					<td style="width:10%; height:150px;">
	    						<div>${postsUser}</div><br/>
	    						<img src="/promasys/documents/${postsUserId}/jpg/${postsUserPhoto}" width="100px" height="100px"/>
	    					</td>
	    					<td style="width:60%; height:150px">
	    						<table rules="rows" style="width:100%; height:100%;border-left:solid;">
	    							<tr><td style="height:25%">${postsTopic}</td></tr>
	    							<tr><td style="height:50%">${postsContext}</td></tr>
	    							<tr><td style="height:20%;text-align:right"><a href="#" >回复本楼</a></td></tr>
	    						</table>
	    					</td>
	    				</tr>
	    			</table>
	    		</div>
	    		<div style="width:98%;">
	    			<table frame="none" rules="rows" bordercolor="#B4D3EF" style="width:100%;">
		    			<c:forEach var="reply" items="${replylist}">
		    			<tr>
		    				<td style="width:10%; height:150px;">
	    						<div>${reply.users.name}</div><br/>
	    						<img src="/promasys/documents/${reply.users.id}/jpg/${reply.users.photo}" width="100px" height="100px"/>
	    					</td>
		    				<td style="width:60%; height:150px">
								<table rules="rows" style="width:100%; height:100%;border-left:solid;">
	    							<tr><td style="height:70%">${reply.content}</td></tr>
	    							<tr><td style="height:20%;text-align:right"><a href="#" >回复本楼</a></td></tr>
	    						</table>
							</td>
		    			</tr>
		    			</c:forEach>
	    			</table>
	    		</div>
	    		<div style="width:98%;">
	    			<table frame="none" rules="rows" bordercolor="#B4D3EF" style="width:100%">
	    				<tr>
	    					<td style="width:10%; height:150px;">
	    						<div>${loginUser}</div><br/>
	    						<img src="/promasys/documents/${loginUserId}/jpg/${loginUserPhoto}" width="100px" height="100px"/>
	    					</td>
	    					<td style="width:60%; height:150px">
	    						<div class="">
						    		<textarea name="content" style="border:solid 1px;width:100%;" rows=15;></textarea>
						    		<br/>
						    		<input type="submit" id="submit" value="回复"/>
				    			</div>
	    					</td>
	    				</tr>
			    	</table>
	    		</div>
    		</form>
    	</div>
    </div>
  </body>
</html>
