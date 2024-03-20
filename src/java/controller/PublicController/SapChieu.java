/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.PublicController;

import dal.AdminDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.List;

import model.Movie;

/**
 *
 * @author MinhDuc
 */
@WebServlet(name = "SapChieu", urlPatterns = {"/phimsapchieu"})
public class SapChieu extends HttpServlet {

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
            out.println("<title>Servlet SapChieu</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SapChieu at " + request.getContextPath() + "</h1>");
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
        // Xử lý logic để lấy danh sách các phim sắp chiếu
        AdminDAO dao = new AdminDAO();
        List<Movie> danhSachPhimSapChieu = dao.getListMovie(); // Lấy danh sách phim sắp chiếu từ DAO

        // Tạo HTML để hiển thị danh sách phim sắp chiếu
        StringBuilder html = new StringBuilder();
        html.append(" <div class=\"main_content-movies\">");
        html.append("  <div class=\"MOVIES row\">");
        for (Movie phim : danhSachPhimSapChieu) {
            html.append("<div class=\"content-movie l-3 m-6\">");
            html.append("<div class=\"overlayout\" onclick=\"redirectMovie('" + phim.getId() + "')\">");
            html.append("<img height=\"400px\" src=\"./Assets/Image/Movie_Image_Vip/" + phim.getMovie_img() + "\" alt=\"ERROR\">");
            html.append("<div class=\"overlay\">");
            html.append("<div class=\"ticket-ticket\">");
            html.append("<a href=\"MovieDetailServlet?id=" + phim.getId() + "\" class=\"button buy_tickets\"><i class=\"fa-solid fa-ticket fa-2xs\"></i>Mua vé</a>");
            html.append("</div></div></div>");
            html.append("<a href=\"MovieDetailServlet?id=" + phim.getId() + "\" id=\"movie_id\">" + phim.getName() + "</a>");
            html.append("</div>");
        }
        html.append("</div>");
        html.append("</div>");

        // Set content type là text/html
        response.setContentType("text/html");
        // Gửi HTML về cho client
        PrintWriter out = response.getWriter();
        out.println(html.toString());
        out.close();
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
        // Xử lý logic để lấy danh sách các phim sắp chiếu
        AdminDAO dao = new AdminDAO();
        List<Movie> danhSachPhimSapChieu = dao.getAllMovieIncoming(); // Lấy danh sách phim sắp chiếu từ DAO

        // Tạo HTML để hiển thị danh sách phim sắp chiếu
        StringBuilder html = new StringBuilder();
        html.append(" <div class=\"main_content-movies\">");
        html.append("  <div class=\"MOVIES row\">");
        for (Movie phim : danhSachPhimSapChieu) {
            html.append("<div class=\"content-movie l-3 m-6\">");
            html.append("<div class=\"overlayout\" onclick=\"redirectMovie('" + phim.getId() + "')\">");
            html.append("<img height=\"400px\" src=\"./Assets/Image/Movie_Image_Vip/" + phim.getMovie_img() + "\" alt=\"ERROR\">");
            html.append("<div class=\"overlay\">");
            html.append("<div class=\"ticket-ticket\">");
            html.append("<a href=\"MovieDetailServlet?id=" + phim.getId() + "\" class=\"button buy_tickets\"><i class=\"fa-solid fa-ticket fa-2xs\"></i>Mua vé</a>");
            html.append("</div></div></div>");
            html.append("<a href=\"MovieDetailServlet?id=" + phim.getId() + "\" id=\"movie_id\">" + phim.getName() + "</a>");
            html.append("</div>");
        }
        html.append("</div>");
        html.append("</div>");

        // Set content type là text/html
        response.setContentType("text/html");
        // Gửi HTML về cho client
        PrintWriter out = response.getWriter();
        out.println(html.toString());
        out.close();

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
