
package wedding.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import wedding.DAO.cusRegisterDAO;
import wedding.beans.cusRegisterBeans;


public class cusRegisterServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cusRegisterServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cusRegisterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        
        String fname= request.getParameter("fname");
        String lname= request.getParameter("lname");
        String email= request.getParameter("email");
        String pass = request.getParameter("pass");
        String passc= request.getParameter("passc");
        
        cusRegisterBeans bean = new cusRegisterBeans();
        
        
        bean.setFname(fname);
        bean.setLname(lname);
        bean.setEmail(email);
        bean.setPass(pass);
        bean.setPassc(passc);
        
        cusRegisterDAO creg = new cusRegisterDAO();
        
        String cusreg= creg.cusRegister(bean);
        
        if(cusreg.equals("Successfully Registered to the system")){
            
            
             out.print("successfull");
            request.getRequestDispatcher("/customer_login.jsp").forward(request, response);
        
        
        }
        
        
        
        
        
        
        
        
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
