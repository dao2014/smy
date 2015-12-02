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
  <link href="./resources/extjs/resources/css/ext-all-neptune.css" rel="stylesheet" />
  <script src="./resources/extjs/bootstrap.js"></script>
	<script type="text/javascript">
        function init() {
            Ext.MessageBox.alert("ExtJS", "Hello ExtJS");
        }
        Ext.onReady(init);
    </script>
 </head>
 <body>
 </body>
</html>