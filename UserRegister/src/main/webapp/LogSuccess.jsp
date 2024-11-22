<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
UserBean ub=(UserBean)application.getAttribute("ubean");
out.println("welcome user:"+ub.getuName()+"<br>");
%>
<a href="view">ViewProfile</a>
<a href="logout">logout</a>
</body>
</html>