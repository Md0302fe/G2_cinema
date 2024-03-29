/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.ProfileController;

import dal.AdminDAO;
import dal.HistoryDAO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import model.Booking;
import model.Movie;

/**
 *
 * @author pts03
 */
@WebServlet(name = "View", urlPatterns = {"/View"})
public class View extends HttpServlet {

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
            out.println("<title>Servlet View</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet View at " + request.getContextPath() + "</h1>");
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
        String user = request.getParameter("id");
        String bookin = request.getParameter("booking");
        AdminDAO dao = new AdminDAO();
        HistoryDAO history = new HistoryDAO();
        Booking ListC = history.getBookingDetails(user, bookin);
        String[] numberSeats = ListC.getSeatList().split(",");
        int n = numberSeats.length;
        //System.out.println(ListB.size());
        //System.out.println(boo.size());
        
        List<Movie> m = dao.getListMovie();
        List<Movie> movieIncoming = dao.getAllMovieIncoming();
        request.setAttribute("listMovie", m);
        request.setAttribute("movieIncoming", movieIncoming);
        
        request.setAttribute("n", n);
        request.setAttribute("ListC", ListC);
        request.getRequestDispatcher("view.jsp").forward(request, response);
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
        String user = request.getParameter("id");
        HistoryDAO history = new HistoryDAO();
        ArrayList<Booking> ListB = history.getAccountModels(user);
        for (Booking booking : ListB) {

            // System.out.println();
            request.setAttribute("ListB", ListB);

        }
        //System.out.println(ListB.size());
        //System.out.println(boo.size());
        request.getRequestDispatcher("view.jsp").forward(request, response);
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
