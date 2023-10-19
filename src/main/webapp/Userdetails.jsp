<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Welcome Admin<img src="ASSETS/icon.png" alt="icon" width="20px" heigth="30px">
<br>
<br>
<center>Details</center>
<%

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","Vishnu@1798$riyaz");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from log");
while(rs.next()){
	
	out.println("Username="+rs.getString(1));
	out.println(",");
    out.println("Pwd="+rs.getString(2));
    out.println(",");
	out.println("Email="+rs.getString(3));
	out.println("<br>");
}
}
catch(Exception e){
	out.println(e);
}
%>

</body>
</html>