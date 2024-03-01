/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Controller.Admin;

import dal.AdminDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import model.Movie;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "DeleteMovie", urlPatterns = {"/DeleteMovie"})
@MultipartConfig

public class DeleteMovie extends HttpServlet {

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
        String rawId = request.getParameter("delItem");
        int id = Integer.parseInt(rawId);

        AdminDAO dao = new AdminDAO();
        Movie m = dao.getMovieById(id);
        String uploadPath = getServletContext().getRealPath("Assets/Image/Movies_Image/") + File.separator + m.getMovie_img();
        String uploadPath2 = getServletContext().getRealPath("Assets/Image/Movies_Trailer/") + File.separator + m.getMovie_trailer();
        File imgDelete = new File(uploadPath);
        File trailerDelete = new File(uploadPath2);
        if (imgDelete.delete() && trailerDelete.delete()) {
            System.out.println("File deleted successfully");
        } else if (imgDelete.delete() || trailerDelete.delete()) {
            System.out.println("Some file can't be delete!");
        } else {
            System.out.println("Failed to delete the file");
        }

        dao.deleteMovie(id);
        response.sendRedirect("ListMovie");
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
