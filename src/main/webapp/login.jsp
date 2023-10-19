<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<Style>
.container{
text-align:center;
margin:24px 0 12px,0;
position:relative;
} 
img.icon{
width:30%;
border-radius:50%;
}
</Style>
</head>

<form action="Logs" method="post">
<body style="background-color:#acd">
<center>Welcome to Login page</center>
<img src="ASSETS/icon.png" alt="icon"><br>
<label>Login:</label><br>
<input type="text" name="login"><br><br>
<label>Password:</label><br>
<input type="password" name="pwds"><br><br>
<input type="submit">
</form>
<a href="for.jsp">Forgot password</a>
</body>
</html>