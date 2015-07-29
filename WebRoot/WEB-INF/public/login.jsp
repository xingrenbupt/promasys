<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>系统登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/login.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/common.css">

  </head>
  
  <body>
  	<div class="main_frame">
  		<div class="title"><span>项目进展管理系统</span></div>
  		<div class="title1"><label>用户登录</label></div>
	    <div class="login">
	    	<form action="/promasys/login.do?flag=login" method="post">
		    	<table >
		    		<tr>
		    			<td colspan="3">用户名</td>
		    			
		    		</tr>
		    		<tr>
		    			<td colspan="3">
		    				<input type="text" name="name">
		    			</td>
		    			
		    		</tr>
		    		<tr>
		    			<td colspan="3">密码</td>
		    			
		    		</tr>
		    		<tr>
		    			<td colspan="3">
		    				<input type="text" name="pwd">
		    			</td>
		    			
		    		</tr>
		    		<tr>
		    			<td colspan="3">验证码</td>
		    			
		    		</tr>
		    		<tr>
		    			<td colspan="3">
		    				<input type="text" name="verfication">
		    			</td>
		    		</tr>
		    		<tr>
		    			<td>
		    				<input type="submit" name="submit" class="buttom" value="登录">
		    			</td>
		    			<td>
		    				<a href="/promasys/register.do?flag=regUI">立即注册</a>
		    			</td>
		    			<td>
		    				<a href="#">忘记密码</a>
		    			</td>
		    		</tr>
		    	</table>
	    	</form>
	    </div>
    </div>
  </body>
</html>
