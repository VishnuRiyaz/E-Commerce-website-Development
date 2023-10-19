<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Searching page</title>
<link rel="icon" href="ASSETS/icon.png" type="image/x-icon">
<style>body{
background-image:url('ASSETS/vinayagar.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size:cover;
background-position:right top;
}
h3{
color:Orange;
}
center{
heigth:400px;}
input[type=search]{
margin:0;
width:50%;
height:30%;
box-sizing:border-box;}
</style>
</head>
<body ><br><br><br><br><br><br><br><br><br><br><br><br><br>
<form action="#" action="post">
<center><h3>Search Your Website</h3>
<input type="search" placeholder="Enter the website" size="40" name="a1">
<input type="submit"></center>
</form>
<%
String a=request.getParameter("a1");
		if(a!=null) {
			if(a.equals("Besant"))
					{
				response.sendRedirect("Main.jsp");
			}else {
				out.println("error");
			}
		}%>
</body>
</html>