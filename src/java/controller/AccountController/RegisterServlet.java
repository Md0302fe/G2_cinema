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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.Account;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

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
            out.println("<title>Servlet RegisterController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterController at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("Register.jsp").forward(request, response);
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
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("password");
        String rePass = request.getParameter("rePassword");

        //check password valid
        Pattern upperCasePattern = Pattern.compile("[A-Z]");

        //check valid phone number
        Pattern phonePattern = Pattern.compile("^0\\d{9}$");
        Matcher matcher = phonePattern.matcher(phone);

        if (pass.length() < 9 || !upperCasePattern.matcher(pass).find()) {
            request.setAttribute("error", "Mật khẩu phải có ít nhât 8 ký tự và 1 ký tự in hoa!");
            request.setAttribute("fullName", fullName);
            request.setAttribute("email", email);
            request.setAttribute("phone", phone);
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        } else if (!matcher.matches()) {
            request.setAttribute("error", "Số điện thoại phải có 10 ký tự và bắt đầu bằng số 0!");
            request.setAttribute("fullName", fullName);
            request.setAttribute("email", email);
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        } else {

            AccountDAO ad = new AccountDAO();
            boolean isUsedEmail = ad.checkEmail(email);
            boolean isUsedPhone = ad.checkPhone(phone);

            if (pass.equals(rePass)) {
                String passMD5 = ad.generateMD5Hash(pass);
                Account acc = new Account(fullName, email, phone, passMD5, "default.jpg", "user");

                String verifyCode = ad.getRandom();

                boolean test = ad.sendEmail(acc, verifyCode);
                if (test) {
                    HttpSession session = request.getSession();
                    session.setAttribute("account", acc);
                    session.setAttribute("verifyCode", verifyCode);
                    ad.register(acc);
                    request.getRequestDispatcher("Verify.jsp").forward(request, response);
                }
            } else if (isUsedEmail) {
                request.setAttribute("error", "Email đã tồn tại!");
                request.setAttribute("fullName", fullName);
                request.setAttribute("phone", phone);
                request.getRequestDispatcher("Register.jsp").forward(request, response);
            } else if (isUsedPhone) {
                request.setAttribute("fullName", fullName);
                request.setAttribute("email", email);
                request.setAttribute("error", "Số điện thoại đã tồn tại!");
                request.getRequestDispatcher("Register.jsp").forward(request, response);
            } else if (isUsedPhone && isUsedEmail) {
                request.setAttribute("error", "Email và số điện thoại đã tồn tại!");
                request.getRequestDispatcher("Register.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Mật khẩu không khớp!!!");
                request.setAttribute("fullName", fullName);
                request.setAttribute("phone", phone);
                request.setAttribute("email", email);
                request.getRequestDispatcher("Register.jsp").forward(request, response);
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
