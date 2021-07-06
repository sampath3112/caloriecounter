import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class InsertData extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
PrintWriter out = response.getWriter();


Class.forName("oracle.jdbc.driver.OracleDriver");


Connection con= DriverManager.getConnection ("jdbc:oracle:thin:@localhost:1521:xe","root","Sampath@123");

Statement sty=con.createStatement();


PreparedStatement st = con .prepareStatement("insert into users values(?, ?, ?)");

st.setString(1, request.getParameter("name"));
st.setString(2, request.getParameter("username"));
st.setString(3, request.getParameter("password"));


st.executeUpdate();
st.close();




RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
rd.forward(request,response);
con.close();
}
catch (Exception e) {
  RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
  rd.forward(request,response);

}
}
}