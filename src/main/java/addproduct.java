

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

@WebServlet("/addproduct")
public class addproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int a=Integer.parseInt(request.getParameter("a1"));
		String b=request.getParameter("a2");
		int c=Integer.parseInt(request.getParameter("a3"));
		int d=Integer.parseInt(request.getParameter("a4"));
		String e=request.getParameter("a5");
		PrintWriter pw=response.getWriter();
		try {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","Vishnu@1798$riyaz");
PreparedStatement pt=con.prepareStatement("insert into addproduct values (?,?,?,?,?)");
pt.setInt(1, a);
pt.setString(2, b);
pt.setInt(3, c);
pt.setInt(4, d);
pt.setString(5, e);
pt.executeUpdate();
pw.println("insert successfully");
}
		catch(Exception f) {
			pw.println(f);
		}

}
}