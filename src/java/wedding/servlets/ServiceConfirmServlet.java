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
import wedding.DAO.ServiceConfirmDAO;
import wedding.beans.ServiceConfirmBean;

/**
 *
 * @author Gamith
 */
public class ServiceConfirmServlet extends HttpServlet {

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
            out.println("<title>Servlet ServiceConfirmServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServiceConfirmServlet at " + request.getContextPath() + "</h1>");
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
        
        
        String rid= request.getParameter("rid");
        String uid = request.getParameter("uid");
        String uname = request.getParameter("uname");
        String uemail =request.getParameter("uemail");
        String cat = request.getParameter("cat");
        String pname = request.getParameter("pname");
        String price = request.getParameter("price");
        String spemail = request.getParameter("spemail");
        String pic = request.getParameter("pic");
        String date = request.getParameter("date");
        
        
        ServiceConfirmBean bean = new ServiceConfirmBean();
        
        bean.setRid(rid);
        bean.setUid(uid);
        bean.setUname(uname);
        bean.setUemail(uemail);
        bean.setCat(cat);
        bean.setPname(pname);
        bean.setPrice(price);
        bean.setSpemail(spemail);
        bean.setPic(pic);
        bean.setDate(date);
        
        ServiceConfirmDAO dao = new ServiceConfirmDAO();
        
        String confirm = dao.serviceConfirm(bean);
        
        if(confirm.equals("Successfully Saved")){
            
            
             out.print("successfull");
            response.sendRedirect("ReserveCusViewServlet");
        
        
        }else{
        
         // request.setAttribute("deletebutton",confirm);
          request.getRequestDispatcher("/about_us.jsp").forward(request, response);
        
        
        
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
