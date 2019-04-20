
package wedding.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import wedding.beans.SpReservedServiceViewBean;


public class SpReservedServiceView extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SpReservedServiceView</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SpReservedServiceView at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
           SpReservedServiceViewBean bean = new SpReservedServiceViewBean();
        
           HttpSession session =request.getSession();
           String email = session.getAttribute("email").toString();
           
           request.setAttribute("reservedetails", bean.SpViewOfReservedServices(email));
           
              request.getRequestDispatcher("/service_reserve.jsp").forward(request, response);
        
        
        
        
        
        
        
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
