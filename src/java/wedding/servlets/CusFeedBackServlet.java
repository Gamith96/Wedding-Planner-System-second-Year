package wedding.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import wedding.DAO.CusFeedBackDAO;
import wedding.beans.CusFeedBackBean;

public class CusFeedBackServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CusFeedBackServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CusFeedBackServlet at " + request.getContextPath() + "</h1>");
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

        HttpSession session = request.getSession();
        if (session.getAttribute("email") != null) {

            String spemail = request.getParameter("spemail");
            String uemail = request.getParameter("uemail");
            String rating = request.getParameter("r1");
            String comment = request.getParameter("comments");

            CusFeedBackBean bean = new CusFeedBackBean();

            bean.setSpemail(spemail);
            bean.setUemail(uemail);
            bean.setComment(comment);
            bean.setRating(rating);

            CusFeedBackDAO dao = new CusFeedBackDAO();

            String feed = dao.cusfeedback(bean);

            if (feed.equals("Successfully added")) {

                out.print("successfull");
                response.sendRedirect("postRetriveServlet");

            } else {

                //request.setAttribute("ErrorMessage", cusreg);
                request.getRequestDispatcher("/.jsp").forward(request, response);

            }

        } else {

            request.getRequestDispatcher("customer_login.jsp").forward(request, response);

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
