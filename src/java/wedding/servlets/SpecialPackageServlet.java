
package wedding.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import wedding.DAO.SpecialPackageDAO;
import wedding.beans.SpecialPackageBean;


public class SpecialPackageServlet extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SpecialPackageServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SpecialPackageServlet at " + request.getContextPath() + "</h1>");
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
       
        String pack = request.getParameter("package");
        String email = request.getParameter("email");
        
        
        SpecialPackageBean bean = new SpecialPackageBean();
        
        bean.setPack(pack);
        bean.setEmail(email);
        
        SpecialPackageDAO dao = new SpecialPackageDAO();
        
        String addpack = dao.Addpackage(bean);
        
         if(addpack.equals("Successfully added to the system")){
       
                out.print("successfull");
            request.getRequestDispatcher("/special_offers.jsp").forward(request, response);
              
       
       }
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
