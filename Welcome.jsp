
<%@ page language="java" contentType="text/html"%>
<%@ page import="java.text.*,java.util.*" %>
<html>
<head>
<title>Date JSP</title>
</head>
<% SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy"); %>
<body>
<h1>Welcome to Tomcat! Today is <%= sdf.format(new java.util.Date()) %></h1>
</body>
</html>