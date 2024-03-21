/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.ProfileController;

import dal.AccountDAO;
import dal.AdminDAO;
import dal.EditProfileDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import java.util.regex.Pattern;

import model.Account;
import model.Movie;

/**
 *
 * @author pts03
 */
public class EditProfile extends HttpServlet {

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

        //String userId = request.getParameter("userId");
        String rawId = request.getParameter("userId");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phonenumber = request.getParameter("phonenumber");
        String password = request.getParameter("password");

        int userId = Integer.parseInt(rawId);

        Account account = new Account();
        account.setId(userId);
        account.setFullName(name);
        account.setEmail(email);
        account.setPhone(phonenumber);
        account.setPassword(password);

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
        AdminDAO d = new AdminDAO();
        AccountDAO dao = new AccountDAO();
        Pattern upperCasePattern = Pattern.compile("[A-Z]");
        //Account acc = dao.login(LEGACY_DO_HEAD, LEGACY_DO_HEAD)
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phonenumber = request.getParameter("phonenumber");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();

        if (password == null) {
            Account account = (Account) session.getAttribute("account");
            password = account.getPassword();
        }
        if (password.length() < 9 || !upperCasePattern.matcher(password).find()) {
            request.setAttribute("error", "Mật khẩu phải có ít nhât 9 ký tự và 1 ký tự in hoa!");
            request.getRequestDispatcher("ProfileServlet").forward(request, response);
        }
        String hashPass = dao.generateMD5Hash(password);
        //String hashPass = dao.generateMD5Hash(password);
        //int id1 = Integer.parseInt(id);
        //int id2 = request.getIntHeader("id");

        EditProfileDAO ed = new EditProfileDAO();
        boolean s = ed.updateUserProfile(name, hashPass, phonenumber, email, id);
        if (s) {

            Account acc = (Account) session.getAttribute("account");
            acc.setEmail(email);
            acc.setFullName(name);
            acc.setPassword(hashPass);
            acc.setPhone(phonenumber);

            session.setAttribute("account", acc);

            List<Movie> m = d.getListMovie();
            List<Movie> movieIncoming = d.getAllMovieIncoming();
            request.setAttribute("listMovie", m);
            request.setAttribute("movieIncoming", movieIncoming);
            request.setAttribute("success", "EditProfile is succesfully");
            response.sendRedirect("ProfileServlet");
        } else {
            request.setAttribute("error", "Error");
            request.getRequestDispatcher("ProfileServlet").forward(request, response);
        }

        //processRequest(request, response);
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
        processRequest(request, response);
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
