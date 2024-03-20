/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.MovieDetailController;

import com.google.gson.Gson;

import dal.AdminDAO;
import dal.BookingDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Movie;
import model.Seat;
import model.SeatData;

/**
 *
 * @author MinhDuc
 */
@WebServlet(name = "Details_Seat", urlPatterns = {"/seat"})
public class Details_Seat extends HttpServlet {

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
            out.println("<title>Servlet Details_Seat</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Details_Seat at " + request.getContextPath() + "</h1>");
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
        BookingDAO b = new BookingDAO();
        PrintWriter out = response.getWriter();

        // lấy id phim khi người dùng chọn giờ
        String id_raw = request.getParameter("id");
        String date = request.getParameter("date");
        String choiceTime = request.getParameter("time");

        // Chuỗi đại diện cho ngày : lấy ra thứ tại ngày đó.
        String dateString = date;
        LocalDate dateS = LocalDate.parse(dateString);
        DayOfWeek dayOfWeek = dateS.getDayOfWeek();

        // Cập nhật lại giờ khi người dùng chọn vào các giờ khác và setup lại ghế.
        String choiceTime_In = request.getParameter("choiceTime");

        // tránh trường hợp F5 .
        if (choiceTime_In == null) {
            choiceTime_In = choiceTime;
        }

        String roomName = b.getRoomsId(date, id_raw, choiceTime_In);
        System.out.println("roomName : " + roomName);

        try {
            int movieId = Integer.parseInt(id_raw);
            // lấy movie theo id => object movie
            Movie mv = dao.getMovieById(movieId);

            ArrayList<String> listTimes = b.getList_Showtimes(id_raw, date);
            // danh sách ghế đã được chọn .

            ArrayList<String> listSeats = b.isValist_Seats(date, choiceTime, id_raw);
            request.setAttribute("listSeats", listSeats);

            List<Movie> m = dao.getListMovie();
            List<Movie> movieIncoming = dao.getAllMovieIncoming();
            request.setAttribute("listMovie", m);
            request.setAttribute("movieIncoming", movieIncoming);
            request.setAttribute("id_raw", id_raw);
            request.setAttribute("roomName", roomName);
            request.setAttribute("dayOfWeek", dayOfWeek);
            request.setAttribute("choiceTime", choiceTime);
            request.setAttribute("date", date);
            request.setAttribute("choiceTime", choiceTime);
            request.setAttribute("listTimes", listTimes);
            // push movie này qua trang chọn seat để hiện thị hình ảnh ... 
            request.setAttribute("movie", mv);
        } catch (Exception e) {
            System.out.println("Error In doGet MovieDeTails_Servlet : " + e);
        }
        request.getRequestDispatcher("CreateSeatPage.jsp").forward(request, response);
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

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
