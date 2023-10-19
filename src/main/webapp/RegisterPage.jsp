<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<link rel="icon" type="image/x-icon" href="ASSETS/icon.png">
<style>
body{
margin:0;
background-color:#1dd;}
input[type=text]{
width:75%;
padding:12px 20px;
margin:8px 0;
box-sizing:border-box;
}
input[type=email]{
width:75%;
padding:12px 20px;
margin:8px 0;
box-sizing:border-box;
}
input[type=password]{
width:75%;
padding:12px 20px;
margin:8px 0;
box-sizing:border-box;
}</style>
</head>
<body>
<form action="register" method="post">
<center><h2>Register Page</h2></center>
<label>FirstName:</label><br>
<input type="text" name="first" size="100" placeholder="FirstName"><br><br>
<label>LastName:</label><br>
<input type="text" name="last" size="100"placeholder="LastName"><br><br>
<label> Create your UserName:</label><br>
<input type="text" name="username" size="100"placeholder="UserName"><br><br>
<label>Create your PassWord:</label><br>
<input type="password" name="pwd" size="100"placeholder="password"><br><br>
<label>Date of Birth:</label>
<input type="date" name="date"><br><br>
<label>Email Id:</label><br>
<input type="email" name="email" size="100"placeholder="Email"><br><br>
<label>Conform Email id</label><br>
<input type="email" name="emails" size="100"placeholder="Conform_email"><br><br>
<label>Gender:</label>Male<input type="radio" name="male">Female<input type="radio" name="female"><br><br>
<label>Address:</label><textarea placeholder="enter your address" name="addr"></textarea><br><br>
<center><input type="submit"> &nbsp; <input type="reset"></center>
</form>

</body>
</html>