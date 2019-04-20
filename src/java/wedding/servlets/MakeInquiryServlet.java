package wedding.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import wedding.DAO.MakeInquiryDAO;
import wedding.beans.MakeInquiryBean;

public class MakeInquiryServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MakeInquiryServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MakeInquiryServlet at " + request.getContextPath() + "</h1>");
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

        String name = request.getParameter("cname");
        String email = request.getParameter("cemail");
        int phonenum = Integer.parseInt(request.getParameter("cnum"));
        String msg = request.getParameter("cmsg");
        String spemail = request.getParameter("spemail");

        MakeInquiryBean bean = new MakeInquiryBean();

        bean.setName(name);
        bean.setEmail(email);
        bean.setPhonenum(phonenum);
        bean.setMsg(msg);
        bean.setSpemail(spemail);

        MakeInquiryDAO dao = new MakeInquiryDAO();

        String makein = dao.MakeInquiry(bean);

        if (makein != null) {

            request.getRequestDispatcher("/inquiry.jsp").forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
