

import java.io.IOException;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Log
 */
@WebServlet("/Logs")
public class Log extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("login");
		String b=request.getParameter("pwds");
		PrintWriter pw=response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","Vishnu@1798$riyaz");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from log where username='"+a+"' and pwd='"+b+"'");
			if(rs.next()) {
				HttpSession ses=request.getSession();
				ses.setAttribute("vishnu", a);
				response.sendRedirect("Session.jsp");
			}
			else {
				pw.println("error");  	
			}
		}
		catch(Exception e) {
			pw.println(e);
		}
	}

}
