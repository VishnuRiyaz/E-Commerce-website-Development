

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	
	/**
	 *
	 */
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
Statement st=con.createStatement();
st.executeUpdate("update addproduct set product_name='"+b+"',product_price="+c+",product_quantity="+d+",product_image='"+e+"' where product_id="+a+"");

pw.println("Update succesfully");

}
		catch(Exception f) {
			pw.println(f);
		}
	}

	
	}


