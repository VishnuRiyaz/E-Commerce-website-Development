

import java.io.IOException;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("first");
		String b=request.getParameter("last");
		String c=request.getParameter("username");
		String d=request.getParameter("pwd");
		String e=request.getParameter("date");
		String f=request.getParameter("email");
		String g=request.getParameter("emails");
		String h=request.getParameter("male");
	    String i=request.getParameter("addr");
		PrintWriter pw=response.getWriter();
		if(e.equals(f)) {
			
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","Vishnu@1798$riyaz");
			Statement st=con.createStatement();
		    st.executeUpdate("insert into log value('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"')");
		    response.sendRedirect("login.jsp");
		}
		catch(Exception x) {
			pw.println(x);
		}
		}
}
	

