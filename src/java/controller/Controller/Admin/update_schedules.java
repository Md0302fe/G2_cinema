/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Controller.Admin;

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
import model.SchedulesDetail;

/**
 *
 * @author MinhDuc
 */
@WebServlet(name = "update_schedules", urlPatterns = {"/updateschedules"})
public class update_schedules extends HttpServlet {

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
            out.println("<title>Servlet update_schedules</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet update_schedules at " + request.getContextPath() + "</h1>");
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
        String schedules_id = request.getParameter("id");
        AdminDAO a = new AdminDAO();

        SchedulesDetail sc = a.getSchedules_Byid(schedules_id);
        // Lưu trữ schedules_id trong session

        List<Movie> listMovie = a.getListMovie();
        int id = Integer.parseInt(sc.getMovie_name());
        Movie movie = a.getMovieById(id);

        request.setAttribute("movie", movie);
        request.setAttribute("listMovie", listMovie);
        request.setAttribute("schedules", sc);

        request.getSession().setAttribute("schedules_id", schedules_id);
        request.getSession().setAttribute("timeShow", sc.getSchedules_showtime());
        request.getSession().setAttribute("Room", sc.getRoom_name());

        request.getRequestDispatcher("Admin_Update_Schedules.jsp").forward(request, response);
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
        AdminDAO dao = new AdminDAO();
        // Nhận schedules_id từ session
        String schedules_id = (String) request.getSession().getAttribute("schedules_id");
        int indexOf = schedules_id.indexOf("@");

        String selected_movie = request.getParameter("selectedMovie");

        String handle_schedules_id = schedules_id.substring(0, indexOf);
        String room = (String) request.getSession().getAttribute("Room");
        String time = (String) request.getSession().getAttribute("timeShow");

        SchedulesDetail ss = new SchedulesDetail(
                schedules_id,
                handle_schedules_id,
                selected_movie,
                room,
                time);

        dao.Update_Schedules(ss);
        request.setAttribute("mess", "update scheduless successfully");
        request.getRequestDispatcher("Admin_Update_Schedules.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.s
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
