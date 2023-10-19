

import java.io.IOException;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String c=request.getParameter("a");
	String d=request.getParameter("b");
	if(c.equals("admin") && d.equals("admin")) {
		response.sendRedirect("adminhome.jsp");
	}else
	{
		response.sendRedirect("admin.jsp");
	}
	}

}
