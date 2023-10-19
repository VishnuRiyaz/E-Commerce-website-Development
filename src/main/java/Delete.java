

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.io.*;
/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String a =request.getParameter("a1");
	PrintWriter pw=response.getWriter();
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","Vishnu@1798$riyaz");
		Statement st=con.createStatement();
		st.executeUpdate("delete from addproduct where product_name='"+a+"'");
		pw.println("Delete Successfully");
	}catch(Exception b){
		
	}
	}

}
