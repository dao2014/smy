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
 	<form action="user/add" method="post">
 		<!-- 数据库选择：<select name="tablename">
 			<option value="0">主库</option>
 			<option value="1">数据库1表1</option>
 			<option value="2">数据库2表1</option>
 		</select><br/> -->
 		用户状态：<input type="text" name="state" value=""/><br/>
 		用户昵称：<input type="text" name="nickname" value=""/><br/>
 		<input type="submit" value="添加"/>
 	</form>
 </body>
</html>