

import java.io.IOException;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class For
 */
@WebServlet("/For")
public class For extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String d=request.getParameter("a");
		String e=request.getParameter("b");
		String f=request.getParameter("c");
		PrintWriter pw=response.getWriter();
		if(e.equals(f)) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","Vishnu@1798$riyaz");
				Statement st=con.createStatement();
			    st.executeUpdate("update  log set pwd='"+e+"' where pwd='"+d+"'");
			    response.sendRedirect("login.jsp");
			}catch(Exception x) {
				pw.println(x);
			}
		}
	}

}
