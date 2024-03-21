/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.PublicController;

import dal.BookingDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

/**
 *
 * @author MinhDuc
 */
@WebServlet(name = "loadDate_HomePage", urlPatterns = {"/loaddate"})
public class loadDate_HomePage extends HttpServlet {

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
        BookingDAO book = new BookingDAO();
        // Get movieId from request parameter
        String movieId = request.getParameter("movieId");
        System.out.println("ID = " + movieId);
        
        
         // lay ra ngay hien tai
        LocalDate today = LocalDate.now();
        DateTimeFormatter data_format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String today_parse = data_format.format(today);
        
        // Get list of dates for booking based on movieId and Date > today Date
        ArrayList<String> Dates = book.getShowDateForBooking(movieId ,today_parse );
        for (String Date : Dates) {
            System.out.println("Date : " + Date);
        }

        PrintWriter out = response.getWriter();
        for (String Date : Dates) {
            out.println("                                <div id=\"selectedDate\" class=\"option option_date\" onClick=\"sendSelectedDateId('"+ Date +"')\">"+ Date +"</div> \n" +
"");
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
        processRequest(request, response);
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
