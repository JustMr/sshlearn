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
    
    <title>login</title>
    
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
    <s:form action="login">  
	  <table>  
	   <tr>  
	    <td><s:textfield name="username" label="账号" /></td>  
	   </tr>  
	   <tr>  
	    <td><s:textfield name="pwd" label="密码" /></td>  
	   </tr>   
	   <tr>  
	    <td align="center" colspan="2">  
	     <s:submit value="登陆" />  
	     <s:reset value="重置"/>  
	    </td>  
	   </tr>    
	  </table>  
	 </s:form>  
  </body>
</html>
