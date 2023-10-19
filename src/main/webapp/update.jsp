<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update-page</title>
<link rel="icon" type="image/x-icon" href="ASSETS/update.jpg">
<style>
input[type=text]{
width:25%;
padding:12px 20px;
margin:8px 0;
box-sizing:border-box;
}
label{
color:red;}

</style>
</head>
<body style="background-image:url('ASSETS/update2.jpg');background-size:cover;">
<br><br><br>
<div class="container">
<form action="Update" method="post">
<label>Product_Id:</label><br>&nbsp;&nbsp;&nbsp;<input type="text" name="a1"  placeholder="Change_id"size="50"><br><br>
<label>Product_name:</label><br>&nbsp;&nbsp;&nbsp;<input type="text" name="a2"placeholder="Change_name" size="50"><br><br>
<label>Product_price:</label><br>&nbsp;&nbsp;&nbsp;<input type="text" name="a3" placeholder="Change_price"size="50"><br><br>
<label>Product_Quantity:</label><br>&nbsp;&nbsp;&nbsp;<input type="text" name="a4" placeholder="Change_quantity"size="50"><br><br>
<label>Product_image:</label><br>&nbsp;&nbsp;&nbsp;<input type="text" name="a5" placeholder="Change_image"size="50"><br><br>
<center><input type="submit"></center>
</form>
</div>
</body>
</html>