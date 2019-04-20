/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wedding.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import wedding.DAO.ReserveDAO;
import wedding.beans.ReserveBean;

/**
 *
 * @author Gamith
 */
public class ReserveServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ReserveServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ReserveServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
         HttpSession session = request.getSession();
        if (session.getAttribute("email") != null) {

            

            
        
        
        
        
        
         String uemail = request.getParameter("uemail");
         String uid = request.getParameter("uid");
         String uname = request.getParameter("uname");
         String spemail = request.getParameter("spemail");
         String cat = request.getParameter("cat");
         String pname = request.getParameter("pname");
         String price = request.getParameter("price");
         String pic = request.getParameter("pic");
         System.out.println("======id========"+uid);
         ReserveBean bean = new ReserveBean();
         
        bean.setUemail(uemail);
        bean.setUid(uid);
        bean.setUname(uname);
        bean.setSpemail(spemail);
        bean.setCat(cat);
        bean.setPname(pname);
        bean.setPrice(price);
        bean.setPic(pic);
        
        ReserveDAO dao = new ReserveDAO();
        
        String reserveinsert= dao.insertReserveDetails(bean);
        
           if(reserveinsert.equals("Successfully Registered to the sysyetm")){
            
            
             out.print("successfull");
           // request.getRequestDispatcher("/reserve.jsp").forward(request, response);
               response.sendRedirect("ReserveCusViewServlet");
        
        
        }else{
        
          //request.setAttribute("ErrorMessage", cusreg);
          request.getRequestDispatcher("/customer_login.jsp").forward(request, response);
        
        
        
        }
        
        
    }else{
        
            
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
