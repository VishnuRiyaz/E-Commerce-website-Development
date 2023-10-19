<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin page</title>
<style>
body{
background-color:#321;
}</style>
</head>
<body>
<br><br><br>
<center>
<img alt="admin" src="ASSETS/admin.jpg" width="400" heigth="70%">
<br><br>
<form action="#" method="post">
<lable Style="color:white;"><b>Username:</b></lable><input type="text" name="a" size="45" placeholder="Username"><br><br>
<lable Style="color:white;"><b>Password:</b></lable><input type="password" name="b" size="45" placeholder="password"><br><br>
<input type="submit">
</form></center>
<%
String c=request.getParameter("a");
String d=request.getParameter("b");
if(c!=null && d!=null){
	if(c.equals("Vishnu") && d.equals("Riyaz@1798")){
		response.sendRedirect("productManu.jsp");
	}
	else{
		out.println("Error");
	}
}
%>
</body>
</html>