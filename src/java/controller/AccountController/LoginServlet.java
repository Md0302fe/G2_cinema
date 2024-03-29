/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.AccountController;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author LENOVO
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

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
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("Login.jsp").forward(request, response);
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
        String emailOrPhone = request.getParameter("emailOrPhone");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");

        AccountDAO dao = new AccountDAO();
        String hashPass = dao.generateMD5Hash(password);

        Account account = dao.login(emailOrPhone, hashPass);
        System.out.println("Accunt " + account);

        if (account == null) {
            request.setAttribute("error", "Tài khoản hoặc mật khẩu không chính xác!");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {

            Cookie cu = new Cookie("cuser", emailOrPhone);
            Cookie cp = new Cookie("cpass", password);
            Cookie cr = new Cookie("crem", remember);

            if (remember != null) {
                cu.setMaxAge(60 * 60 * 24 * 7);
                cp.setMaxAge(60 * 60 * 24 * 7);
                cr.setMaxAge(60 * 60 * 24 * 7);
            } else {
                cu.setMaxAge(0);
                cp.setMaxAge(0);
                cr.setMaxAge(0);
            }

            response.addCookie(cp);
            response.addCookie(cu);
            response.addCookie(cr);

            HttpSession session = request.getSession();
            session.setAttribute("account", account);
            String redirectUrl = (String) session.getAttribute("redirectUrl");

            if (redirectUrl != null && !redirectUrl.isEmpty()) {
                // Xoá URL khỏi session
                session.removeAttribute("redirectUrl");
                // Lấy các giá trị từ session
                String id = (String) session.getAttribute("id");
                String date = (String) session.getAttribute("date");
                String time = (String) session.getAttribute("time");

                // Xoá các giá trị khỏi session
                session.removeAttribute("redirectUrl");
                session.removeAttribute("id");
                session.removeAttribute("date");
                session.removeAttribute("time");

                // Chuyển hướng đến trang seat với các giá trị thích hợp
                response.sendRedirect("seat?id=" + id + "&date=" + date + "&time=" + time);
            } else {
                if ("User".equals(account.getRole())) {
                    response.sendRedirect("home");
                } else {
                    response.sendRedirect("admin");
                }
            }

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
