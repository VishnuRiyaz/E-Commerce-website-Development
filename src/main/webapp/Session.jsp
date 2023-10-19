<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product-page</title>

</head>
<body>
<h2>welcome to home page</h2>
<h1 style="color:Red;"><strong>
<%
String a=session.getAttribute("vishnu").toString();
out.println(a);
out.println("<br>");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","Vishnu@1798$riyaz");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addproduct");
	while(rs.next()){%>
	<form action="order.jsp" >
	<input type="hidden" name="a1" value="<%=rs.getString(2)%>">
	<input type="hidden" name="a2" value="<%=rs.getString(3)%>">
	<input type="hidden" name="a3" value="<%=rs.getString(4)%>">
	<input type="hidden" name="a4" value="<%=rs.getString(5)%>">
	
	<img src="<%=rs.getString(5)%>"alt="img" width="100px" height="100px"><br>	<input type="submit">
	
	</form>
	
  
  <%
	}
}
catch(Exception e ){
	out.println(e);
}
%>
</strong></h1>
</body>
</html>