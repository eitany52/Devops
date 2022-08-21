<%@ page language="java" contentType="text/html"%>
<%@ page import="java.text.*,java.util.*" %>
<html>
<head>
<title>Date JSP</title>
</head>
<% SimpleDateFormat sdf=new SimpleDateFormat ("dd/MM/yyyy"); %>
<body>
<h1>Welcome to Tomcat! Today is <%= sdf.format(new java.util.Date()) %></h1>
 <h3>Choose an actor:</h3>
  <form method="get">
    <input type="checkbox" name="actor" value="Jason Statham">Jason
    <input type="checkbox" name="actor" value="Tom Cruise">Tom
    <input type="checkbox" name="actor" value="Will Smith">Will
    <input type="submit" value="Query">
  </form>
 
  <%
  String[] actors = request.getParameterValues("actor");
  if (actors != null) {
  %>
    <h3>You have selected actor(s):</h3>
    <ul>
  <%
      for (int i = 0; i < actors.length; ++i) {
  %>
        <li><%= actors[i] %></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
</body>
</html>