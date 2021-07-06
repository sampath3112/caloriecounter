import java.sql.*;


import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.StringTokenizer;
import java.util.*;

public class check extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
PrintWriter out = response.getWriter();


Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con= DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:xe","vasavi","vasavi");





String mail = request.getParameter("email"); 

String password = request.getParameter("password");


Statement stmt = con.createStatement();  
ResultSet rs = stmt.executeQuery("select * from users");  


while (rs.next()) 
{  
	String pwd = rs.getString("password");  
  if(rs.getString("mail").equals(mail) && rs.getString("password").equals(password))
  {
   con.close();  
   String msg =rs.getString("mail") ;
   request.setAttribute("msg",msg);
   RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
   rd.forward(request,response);
  }

   
} 
String msg = "incorrect password/email id";

con.close();  


request.setAttribute("msg",msg);
RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
rd.forward(request,response);

}
catch (Exception e) {
 String msg="user mail/password is incorrect!";
  request.setAttribute("msg",msg);
  RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
  rd.forward(request,response);

}
}
}









