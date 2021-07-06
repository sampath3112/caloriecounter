import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class Entries extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {



Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con= DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:xe","root","Sampath@123");

PreparedStatement st = con .prepareStatement("insert into entries values(?, ?, ?,?,?)");

int age = Integer.parseInt( request.getParameter("age"));
int kg = Integer.parseInt(request.getParameter("kg"));
int grams = Integer.parseInt( request.getParameter("grams"));
int ft = Integer.parseInt(request.getParameter("ft"));
int in = Integer.parseInt(request.getParameter("in"));
float weight = kg +  ((float)grams / 1000);
float height = ft*12 +  in;


float bmi = (703 * ((float)weight / (height * height)));
String msg="";
if (bmi >= 25){
  msg = " overweight";
}
else if (bmi >= 18.5)
{
  msg = "normal";
}
else 
msg = "underweight";

st.setString(1, request.getParameter("age"));
st.setString(2, Float.toString(weight));
st.setString(3, Float.toString(height));
st.setString(4, msg);
st.setString(5, msg);

st.executeUpdate();

con.close();

request.setAttribute("msg",msg);

RequestDispatcher rd = request.getRequestDispatcher("aboutMe.jsp");
rd.forward(request,response);

}
catch (Exception e) {
  String msg="user mail is already present!";
  request.setAttribute("msg",e);
  RequestDispatcher rd = request.getRequestDispatcher("aboutMe.jsp");
  rd.forward(request,response);
}
}
}










