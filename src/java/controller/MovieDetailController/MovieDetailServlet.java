/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.MovieDetailController;

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
import java.util.List;
import model.Movie;

/**
 *
 * @author GIA TIEN
 */
public class MovieDetailServlet extends HttpServlet {

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
        BookingDAO b = new BookingDAO();
        String id_raw = request.getParameter("id");

        try {
            int movieId = Integer.parseInt(id_raw);
            Movie mv = dao.getMovieById(movieId);
            List<Movie> m = dao.getListMovie();
            // lay ra ngay hien tai
            LocalDate today = LocalDate.now();
            DateTimeFormatter data_format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            // lấy tất cả booking của id_này mà ngày > ngày hiện tại
            String today_parse = data_format.format(today);
            List< String> StringDate = b.getShowDateForBooking(id_raw, today_parse);

            request.setAttribute("listMovie", m);
            request.setAttribute("movie", mv);
            request.setAttribute("StringDate", StringDate);
            request.getRequestDispatcher("DetailMovies.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("Error In doGet MovieDeTails_Servlet : " + e);
        }
    }

    public static void main(String[] args) {
        AdminDAO dao = new AdminDAO();
        int movieId = Integer.parseInt("3");
        Movie mv = dao.getMovieById(movieId);
        System.out.println(mv.getMovie_trailer());
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
        BookingDAO b = new BookingDAO();
        String id = request.getParameter("id");

        PrintWriter out = response.getWriter();

        String date_time = request.getParameter("timeByDate");
        List<String> Result = b.getList_Showtimes_Future(id, date_time);

        out.println("<div class=\"showtime_bundle\">"); // Bắt đầu một bundle cho mỗi ngày
        out.println("<p class=\"Subtitles font-semibold\">2D Phụ Đề</p>"); // Chỉ hiển thị một lần thông tin "2D Phụ Đề"
        for (String time : Result) {
            out.println("<button class=\"time_slot1 border border-1 font-semibold\">" + time + "</button>");
        }
        out.println("</div>"); // Kết thúc bundle cho mỗi ngày
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
