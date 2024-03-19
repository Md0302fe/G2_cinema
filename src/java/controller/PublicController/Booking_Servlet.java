/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.PublicController;

import dal.AdminDAO;
import dal.BookingDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import model.Booking;
import model.Movie;

/**
 *
 * @author MinhDuc
 */
public class Booking_Servlet extends HttpServlet {

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
            out.println("<title>Servlet Booking_Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Booking_Servlet at " + request.getContextPath() + "</h1>");
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
        AdminDAO dao = new AdminDAO();
        BookingDAO book = new BookingDAO();
        List<Movie> list = dao.getListMovie();
        // nhận id movie từ ajax
        String id_raw = request.getParameter("movie_id");
        // sau đó lấy danh sách các ngày mà phim đó được chiếu.Date
        // lay ra ngay hien tai
        LocalDate today = LocalDate.now();
        DateTimeFormatter data_format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String today_parse = data_format.format(today);
        ArrayList<String> listDate = book.getShowDateForBooking(id_raw, today_parse);
        request.setAttribute("listDate", listDate);
        request.setAttribute("list", list);
        // Chuyển hướng yêu cầu tới JSP 
        request.getRequestDispatcher("booking.jsp").forward(request, response);
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
        String movieId = request.getParameter("movieId");
        BookingDAO b = new BookingDAO();
        // lay ra ngay hien tai            
        LocalDate today = LocalDate.now();
        DateTimeFormatter data_format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        // lấy tất cả booking của id_này mà ngày > ngày hiện tại
        String today_parse = data_format.format(today);
        List< String> StringDate = b.getShowDateForBooking(movieId, today_parse);

        PrintWriter out = response.getWriter();

        for (String string : StringDate) {
            out.println("<div style=\"margin-bottom: 32px ; display: flex ; justify-content: left\" >\n"
                    + "                                <button style=\"padding : 8px; cursor: pointer\" onclick=\"handleDate('"+string+"')\">" + string + "</button>                                 \n"
                    + "                            </div>");
        }
        System.out.println("MovieId : " + movieId);
        for (String string : StringDate) {
            System.out.println("date : " + string);
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
