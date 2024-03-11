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
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;
import model.Account;
import model.Booking;
import model.Movie;
import model.Seat;
import model.SeatData;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "Payment", urlPatterns = {"/Payment"})
public class Payment extends HttpServlet {

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
            out.println("<title>Servlet Payment</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Payment at " + request.getContextPath() + "</h1>");
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
        String id_raw = request.getParameter("id");
        String date = request.getParameter("date");
        String choiceTime = request.getParameter("choice_time");
        String room_name = request.getParameter("room_name");
        String selectedSeats = request.getParameter("selectedSeats"); // This will be a string, you might need further processing

        int id = Integer.parseInt(id_raw);

        AdminDAO dao = new AdminDAO();
        Movie movie = dao.getMovieById(id);

        //cắt chuỗi
        String[] list_seat = selectedSeats.split(",");
        int numberOfSeat = list_seat.length;
        int total_price_raw = numberOfSeat * 90000;
        String total_price = String.valueOf(total_price_raw);

        SeatData data = new SeatData(id_raw, date, choiceTime, room_name, total_price, selectedSeats);
        request.setAttribute("data", data);
        request.setAttribute("movie", movie);
        request.setAttribute("numerSeat", numberOfSeat);

        request.getRequestDispatcher("Payment.jsp").forward(request, response);
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
        String id = request.getParameter("id");
        String date = request.getParameter("date");
        String choiceTime = request.getParameter("choiceTime");
        String room_name = request.getParameter("room_name");
        String selectedSeats = request.getParameter("selectedSeats");
        String selectedPayment = request.getParameter("payment");

        BookingDAO b = new BookingDAO();
        AdminDAO dao = new AdminDAO();

        System.out.println("choice time: "+choiceTime);
        
        //cắt chuỗi
        String[] listSeatAsArray = selectedSeats.split(",");
        List<String> listSeatAsList = Arrays.asList(listSeatAsArray);

        int numberOfSeat = listSeatAsArray.length;
        int total_price_raw = numberOfSeat * 90000;
        String total_price = String.valueOf(total_price_raw);
        
        //get account
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("account");

        //create booking
        Booking booking = new Booking(acc.getId(), total_price, date, choiceTime, selectedSeats, selectedPayment);
        b.addBooking(booking);

//            save du lieu cua ghe
        for (String seat_name : listSeatAsList) {
            b.AddSeat(new Seat(seat_name, choiceTime, id, room_name, date));
        }
        
        request.setAttribute("redirectDelay", 5000);
        request.setAttribute("mess", "We received your purchase request, we'll be in touch shortly!");
        request.getRequestDispatcher("success.jsp").forward(request, response);
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
