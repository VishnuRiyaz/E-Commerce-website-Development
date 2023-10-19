<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password Page</title>

<style>
body{
background-color:Red;
box-sizing:border-box;}
input[type=password]{
width:50%;
margin:0;}</style>
</head>
<body>
<form action="For" method="post">
<center><h3>Forgot Your PassWord</h3></center>
<label>Old Password:</label><br><input type="password" name="a"><br><br> 
<label>New Password:</label><br><input type="password" name="b"><br><br>
<label>Conform Password:</label><br><input type="password" name="c"><br><br>
<input type="submit"><input type="reset">
</form>
</body>
</html>