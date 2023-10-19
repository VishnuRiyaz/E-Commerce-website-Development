<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Menu</title>
<link rel="icon" href="ASSETS/searching.jpg" type="image/x-icon">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">NewProject</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product-Menu <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="add.jsp">Add-Product</a></li>
          <li><a href="update.jsp">Update-Product</a></li>
          <li><a href="Delete.jsp">Delete-Product</a></li>
        </ul>
      </li>
      <li><a href="Userdetails.jsp">User_Details</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>
  
</body>
</html>