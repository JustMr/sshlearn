<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<s:url action="list" var="urlUser"></s:url>
  	<s:a href="%{urlUser}" >测试连接</s:a>
   	<s:iterator value="listUsers">
   		<s:property value="safeusername"/>
    	<s:property value="safepassword"/>
    	<s:property value="safeuserid"/>
    	<s:property value="safesex=='男'?'男':'女'"/>
    	<s:property value="saferole"/>
   	</s:iterator>
  </body>
</html>
