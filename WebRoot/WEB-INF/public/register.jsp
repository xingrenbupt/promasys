<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/register.css">
	<script type="text/javascript" src="/promasys/myAJAX/ajax_uni.js"></script>
	<script type="text/javascript" src="/promasys/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/promasys/js/publicJs.js"></script>
	
  </head>
  
  <body>
    <div class="head">
    	<h1 style="font-size=40px;">项目进展管理系统</h1>
    </div>
    <div class="regForm">
    	<div class="formLeft">
    		<span style="font-size: 20px; font-weight: bold;">用户注册</span>
    		<form action="/promasys/register.do?flag=register" method="post">
    		<table>
    			<tr>
    				<td class="tb1">用户名：</td>
    				<td class="tb2">
    					<input class="inputStyle" type="text" name="name">
    				</td>
    			</tr>
    			<tr>
    				<td class="tb1">大学：</td>
    				<td class="tb2">
    					<!-- 隐藏一个大学的id，注册一个用户，应当以大学标号为准，而不能以大学的名称为准 -->
						<input type="hidden" name="universityId" id="uuniversity"/>
    					<input class="inputStyle" onclick="showUniTbl();" type="text" id="university" name="">
    				</td>
    			</tr>
    			<tr>
    				<td class="tb1">电子邮箱：</td>
    				<td>
    					<input class="inputStyle" type="text" name="email">
    				</td>
    			</tr>
    			<tr>
    				<td class="tb1">密码：</td>
    				<td>
    					<input class="inputStyle" type="text" name="pwd">
    				</td>
    			</tr>
    			<tr>
    				<td class="tb1">确认密码：</td>
    				<td>
    					<input class="inputStyle" type="text" name="pwd2">
    				</td>
    			</tr>
    			<tr>
    				<td class="tb1">验证码：</td>
    				<td>
    					<input class="inputStyle" type="text" name="vertification">
    				</td>
    			</tr>
    			<tr>
    				<td colspan="2"><input class="submitStyle" style="margin-left: 150px;" type="submit" name="submit" value="注册新会员"></td>
    			</tr>
    		</table>
    		</form>
    	</div>
    	<div class="formRight">
    		<div style="margin-top: 100px;">
    			<span style="font-size: 20px; font-weight: bold;">已有账号？</span><br/><br/>
    			<input class="submitStyle" type="submit" value="立即登录">
    		</div>
    	</div>
    </div>
    
    <!-- 准备显示的大学表格 start-->
  	<div class="divSch" id="uniDiv"
	style="display: none;">
	<table border="1" align="center" height="380px" width="500px"
		bordercolor="#3B5888">
		<!-- 显示所有国家 -->
		<tr>
			<td bordercolor="#C3C3C3" width="500px">
			<c:forEach  var="country" items="${countrylist}">
			<a id="${country.id}" onclick='setCoUnis(this)' class="xh"
			href="javascript:void(0);">${country.name }</a> 
			</c:forEach>
			</td>
		</tr>
		<!-- 显示当前国家的所有直辖市和省份 -->
		<tr>
		<td bordercolor="#C3C3C3">
			<div id="proTbl">
				<table width="100%">
					<tr>
						<td>
						<c:forEach var="province" items="${provincelist}">
						<a onclick='setProUnis(this)' href="javascript:void(0);" class="xh" id="${province.id}" coId="${province.country.id}">
						${province.name } </a>
						</c:forEach>
						</td>						
					</tr>
				</table>
			</div>
		</td>
		</tr>
		<!-- 显示当前省或者直辖市的大学 -->
		<tr>
		<td valign="top" bordercolor="#C3C3C3">
			<div style="width: 550px; height: 280px; overflow: auto"
				id="uniTbl">
				<table width="100%">
					<tr>
						<c:forEach var="university" items="${universitylist}" varStatus="vs">
							<td>
								<li>
								<a onclick='showMyUni(this)' href="javascript:void(0);" class="xh"  id="${university.id }">${university.name }</a>
								</li>
							</td>
							<c:if test="${vs.count%3==0}">
								<tr></tr>
							</c:if>
						</c:forEach>
					</tr>	
				</table>
			</div>
		</td>
		</tr>
		<tr>
			<td align="right" bordercolor="#FFFFFF">
				<input type="button" value="关闭窗口" onclick="closeUniTbl()" style="color: white; background-color: #3B5888; padding: 3px;" />
				<br />
				<br />
				<br />
				<br />
			</td>
		</tr>
	</table>
	</div>
  	<!-- 准备显示的大学表格 end -->
  </body>
</html>
