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
    
    <title>修改雇员信息</title>
    
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
    <center>  
 <h3>  
  <font color="blue">修改雇员信息</font>  
 </h3>  
 <s:form action="update" method="POST">  
  <s:hidden name="user.safeuserid" />  
  <table>  
     
   <tr><td><s:textfield name="user.safeusername" label="用户名" /></td></tr>  
   <tr><td><s:textfield name="user.safepassword" label="密码" /></td></tr>  
   <tr><td><s:textfield name="user.safesex" label="性别" /></td></tr>  
   <tr>  
    <td align="center" colspan="2">  
     <s:submit value="提交" />  
     <s:reset value="重置"/>  
     </td>  
 	</tr>  
  </table>  
   
  </s:form>  
 </center> 
  </body>
</html>
