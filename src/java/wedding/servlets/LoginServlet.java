
package wedding.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import wedding.DAO.LoginDAO;
import wedding.DAO.cusRegisterDAO;
import wedding.DBconnection.DBConnection;
import wedding.beans.LoginBean;
import wedding.beans.cusRegisterBeans;


public class LoginServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    

        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        LoginBean bean = new LoginBean();

        bean.setEmail(email);
        bean.setPass(pass);
        
            DBConnection obj = new DBConnection();
     Connection conn;
     Statement stmt;
        
        
        

        if (bean.loginValidation()) {
         
            
                conn = obj.getConnection(); 
            
              PreparedStatement pst;
              
               try {
                
                pst = conn.prepareStatement("SELECT * FROM user WHERE email= '"+email+"'");
               
                ResultSet rs = pst.executeQuery();
                
               if (rs.next()) {
                   
                    int uid = rs.getInt("id");
                    String ufname = rs.getString("fname");
                    
                    System.out.println("======3=3======"+uid+ufname);
                    
                  HttpSession session = request.getSession();
                  session.setAttribute("email", email);
           
                     session.setAttribute("uid", uid);
                      session.setAttribute("uname", ufname);
          
                     System.out.println("======================================"+session.getAttribute("email"));
                      System.out.println("======================================"+session.getAttribute("uid"));
                   
                     
                     
                }
                  
                
                
            } catch (SQLException ex) {
                Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
   

           
           
            response.sendRedirect("cusLogged_home.jsp");
        } else {
            response.sendRedirect("customer_login.jsp");
        }

    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
