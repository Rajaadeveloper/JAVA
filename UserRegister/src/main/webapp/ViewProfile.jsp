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
String fName=(String)request.getAttribute("fname");
UserBean ub=(UserBean)application.getAttribute("ubean");

out.println("page belongs to user:"+fName+"<br>");
out.println(ub.getfName()+"&nbsp&nbsp"+ub.getlName()+"&nbsp&nbsp"+
ub.getCity()+"&nbsp&nbsp"+ub.getmId()+"&nbsp&nbsp"+ub.getPhNo()+"%nbsp&nbsp"+"<a href='edit'>Edit</a>"+"<br>");
%>
<a href="logout">Logout</a>
</body>
</html>