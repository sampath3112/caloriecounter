import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class info extends HttpServlet{
    
    public void doGet(HttpServletRequest request, 
                        HttpServletResponse response) throws IOException, ServletException{
       
        /let servlet call the jsp to produce the output/
        
        
        String name = request.getParameter("age");
              
        float salary =Float.parseFloat(request.getParameter("weight"));
        float premium=(10*salary/100);
         
        request.setAttribute("msg", premium);
        
        RequestDispatcher rd = request.getRequestDispatcher("aboutMe.jsp");
        
        rd.forward(request, response);
        
    }
}