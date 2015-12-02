<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>标题</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
 </head>
 <body>
	<a href="user/add">添加用户</a>
 	<table>
 		<tr>
 			<td>用户ID</td>
 			<td>用户状态</td>
 			<td>用户昵称</td>
 		</tr>
	 	<c:forEach items="${users }" var="one_user">
	 		<tr><td>${one_user.id }</td><td>${one_user.state }</td><td>${one_user.nickname }</td><td><a href="user/edit/${one_user.id }">编辑</a>-------<a href="user/delete/${one_user.id }">删除</a></td></tr>
	 	</c:forEach>
 	</table>
 </body>
</html>