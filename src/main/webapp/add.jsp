<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add-product</title>
<style>
body{
margin:10 px;
background-color:#fcd;
}
.container{
color:red;}
</style>
</head>
<body>
<center><h2>Enter the product list</h2></center>
<img src="ASSETS/index.jpg" alt="index" style="width:510px;height:420px;margin-left:40px;float:right;">
<div class="container">
<form action="addproduct" method="post">
<label>Product-ID:</label><br>
<input type="text" name="a1" size="75"><br><br>
<label>Product-Name:</label><br>
<input type="text" name="a2" size="75"><br><br>
<label>Product-Price:</label><br>
<input type="text" name="a3" size="75"><br><br>
<label>Product-Quantity:</label><br>
<input type="text" name="a4" size="75"><br><br>
<label>Product-Image:</label><br>
<input type="text" name="a5" size="75"><br><br>
<center><input type="submit"></center> 
</form>
</div>
</body>
</html>