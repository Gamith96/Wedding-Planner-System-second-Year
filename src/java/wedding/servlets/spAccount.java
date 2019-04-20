
package wedding.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import wedding.DAO.spAccountDAO;
import wedding.beans.spAccountBean;


public class spAccount extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet spAccount</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet spAccount at " + request.getContextPath() + "</h1>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        // processRequest(request, response);
        try {
            String bname = request.getParameter("businessname");
            String address = request.getParameter("address");
            String phonenum = request.getParameter("phonenum");
            String type = request.getParameter("type");
            String about = request.getParameter("about");

            spAccountBean bean = new spAccountBean();

            bean.setBname(bname);
            bean.setAddress(address);
            bean.setPhonenum(phonenum);
            bean.setType(type);
            bean.setAbout(about);

            spAccountDAO accountDao = new spAccountDAO();

            boolean spaccount = accountDao.spAccount(bean);
            System.out.println("------------spaccount------" + spaccount);

            if (spaccount) {

                //request.setAttribute("succ", 1);
                //request.getRequestDispatcher("sp_account.jsp").forward(request, response);
               
                response.sendRedirect("sp_account.jsp?succ=1");
                System.out.println("------------ " + response);

            } else {

                request.setAttribute("ErrorMessage", spaccount);
                //request.getRequestDispatcher("/sp_account.jsp").forward(request, response);

            }

        } catch (Exception ex) {
            ex.printStackTrace();
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
