<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order-page</title>
<style>
*{
margin:0;
padding:0;}
</style>
</head>
<body>
<%
String d=request.getParameter("a4");

%>
<center><img src="<%=d %>" alt="img" width="200px" height="250px"></center>

<%
out.println("<br>");
String a=request.getParameter("a1");
int b=Integer.parseInt(request.getParameter("a2"));
String c=request.getParameter("a3");

%>
<center>
<form action="Order" method="post">
<label>Product Name:</label><input type="text" name="a1" size="35" value="<%=a %>" ><br><br>
<label>Product price:</label>&nbsp;<input type="text" name="a2" size="35" value="<%=b %>" ><br><br>
<label>Product Quantity:</label><input type="text" name="a3"  size="32" ><br><br>
<input type="submit" value="submit"size="5">&nbsp;&nbsp;<input type="reset" value="cancel" size="5"></form>
<input type="hidden" name="a4" value="<%=d %>">
</center>

</body>
</html>