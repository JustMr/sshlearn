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
    
    <title>雇员列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">  
 table{  
  border: 1px solid black ;  
  border-collapse: collapse;   
 }  
 table thead tr th{  
  border: 1px solid black ;  
  padding: 3px ;  
  backgroud-color: #cccddd;  
 }  
 table tbody tr td{  
  border: 1px solid black ;  
  padding: 3px ;  
 }  
</style> 
  </head>
  
  <body>
<center>  
 <h2>  
  <font color="blue">当前系统雇员列表</font>  
 </h2>  
 <s:form action="delete" theme="simple">  
  <table cellspacing="1" width="80%">  
   <thead>  
    <tr>  
     <th>Select</th>  
     <th>Id</th>  
     <th>Name</th>  
     <th>password</th>  
     <th>sex</th>  
     <th>introduce</th>  
    </tr>  
   </thead>  
   <tbody>  
    <s:iterator value="listUsers">  
     <tr>  
      <td>  
       <input type="checkbox" name="safeuserids" value='<s:property value="safeuserid" />' />  
      </td>  
      <td>  
       <a href='<s:url action="edit"><s:param  name="safeuserid" value="safeuserid" /></s:url>'><s:property value="safeuserid" /></a>  
      </td>  
      <td><s:property value="safeusername" /></td>  
      <td><s:property value="safepassword" /></td>  
      <td><s:property value="safesex" /></td>  
      <td>  
       <a href='<s:url action="edit"><s:param name="safeuserid" value="safeuserid" /></s:url>'>Edit</a>   
       <a href='<s:url action="delete"><s:param name="safeuserid" value="safeuserid" /></s:url>'>Delete</a>  
      </td>  
     </tr>  
    </s:iterator>  
   </tbody>  
  </table>  
  <s:submit value="Delete" />  
      
  <a href="add.jsp">Add</a>  
 </s:form>  
</center>   
  </body>
</html>
