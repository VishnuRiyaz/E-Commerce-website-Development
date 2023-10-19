

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class Order extends HttpServlet {
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("a1");
		int b=Integer.parseInt(request.getParameter("a2"));
		int c=Integer.parseInt(request.getParameter("a3"));
 	
 	PrintWriter pw=response.getWriter();
 	try{
 	Class.forName("com.mysql.jdbc.Driver");
 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","Vishnu@1798$riyaz");
 	Statement st=con.createStatement();
 	ResultSet rs=st.executeQuery("select * from addproduct where product_name='"+a+"'");
 	if(rs.next()) 
 	{
 		int ab=rs.getInt(4);
 		int f=ab-c;
 		if(f<0)
 		{
 			pw.println("Out of Stock");
 		}
 		else {
 			pw.println("order confrom");
 			st.executeUpdate("insert into orders values('"+a+"',"+b+","+c+")");
 			st.executeUpdate("update addproduct set product_quantity= "+f+" where product_name='"+a+"'");
 		}
 	}
 	}
 	catch(Exception e) {
 	pw.println(e);	
 	}
}
}
