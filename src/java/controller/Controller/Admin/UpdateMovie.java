/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Controller.Admin;

import dal.AdminDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import model.Movie;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "UpdateMovie", urlPatterns = {"/UpdateMovie"})
@MultipartConfig
public class UpdateMovie extends HttpServlet {

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
            out.println("<title>Servlet UpdateMovie</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateMovie at " + request.getContextPath() + "</h1>");
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
        String Rawid = request.getParameter("editItem");

        int id = Integer.parseInt(Rawid);

        if (Rawid == null) {
            id = 1;
        }
        AdminDAO dao = new AdminDAO();
        Movie movie = dao.getMovieById(id);

        request.setAttribute("item", movie);
        request.setAttribute("id", id);
        request.getRequestDispatcher("Admin_Movie_Update.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
        String rawId = request.getParameter("id");
        String nameOfMovie = request.getParameter("Movie_Name");
        String duration_str = request.getParameter("Duration");
        String dateRelease = request.getParameter("releaseDate");
        String rate_str = request.getParameter("Rate");
        String national = request.getParameter("National");
        String categorys = request.getParameter("Categorys");
        String director = request.getParameter("Director");
        String stars = request.getParameter("Stars");
        String language = request.getParameter("Language");
        String describel = request.getParameter("Describel");
        String trailer_link = request.getParameter("trailer_link");

        int id = Integer.parseInt(rawId);
        // Delete old file start
        AdminDAO dao = new AdminDAO();
        Movie old = dao.getMovieById(id);
        // XỬ LÝ FILE HÌNH ẢNH
        Part filePart = request.getPart("movie_image");
        String fileName = filePart.getSubmittedFileName();
        // XỬ LÝ FILE TRAILER
        Part filePart2 = request.getPart("movie_trailer");
        String fileName2 = filePart2.getSubmittedFileName();

        // Xử lý ngày
        // Chuyển đổi ngày nhập vào thành LocalDate
        LocalDate releaseDate = LocalDate.parse(dateRelease);
        // Lấy ngày hiện tại
        LocalDate currentDate = LocalDate.now();
        // lấy ngày cách 6 tháng
        LocalDate currentDatePlusSixMonths = currentDate.plus(6, ChronoUnit.MONTHS);

        if (!fileName.toLowerCase().endsWith("jpg") && !fileName.toLowerCase().endsWith("png") && !fileName.toLowerCase().endsWith("jpeg")) {
            request.setAttribute("errorImg1", "File ảnh không đúng định dạng");
            Movie m = new Movie(nameOfMovie, Integer.parseInt(duration_str), dateRelease, Float.parseFloat(rate_str), national, categorys, director, stars, language, describel, "", "", trailer_link);
            m.setId(id);
            request.setAttribute("item", m);
            request.setAttribute("id", id);
            request.getRequestDispatcher("Admin_Movie_Update.jsp").forward(request, response);
        } else if (!fileName2.toLowerCase().endsWith("jpg") && !fileName2.toLowerCase().endsWith("png") && !fileName2.toLowerCase().endsWith("jpeg")) {
            request.setAttribute("errorImg2", "File ảnh không đúng định dạng");
            Movie m = new Movie(nameOfMovie, Integer.parseInt(duration_str), dateRelease, Float.parseFloat(rate_str), national, categorys, director, stars, language, describel, "", "", trailer_link);
            m.setId(id);
            request.setAttribute("item", m);
            request.setAttribute("id", id);
            request.getRequestDispatcher("Admin_Movie_Update.jsp").forward(request, response);
        } else if (releaseDate.isBefore(currentDate)) {
            request.setAttribute("errorDate", "Vui lòng không nhập ngày của quá khứ");
            Movie m = new Movie(nameOfMovie, Integer.parseInt(duration_str), dateRelease, Float.parseFloat(rate_str), national, categorys, director, stars, language, describel, "", "", trailer_link);
            m.setId(id);
            request.setAttribute("item", m);
            request.setAttribute("id", id);
            request.getRequestDispatcher("Admin_Movie_Update.jsp").forward(request, response);
        } else if (releaseDate.isAfter(currentDatePlusSixMonths)) {
            request.setAttribute("errorDate", "Vui lòng không nhập hơn quá 6 tháng");
            Movie m = new Movie(nameOfMovie, Integer.parseInt(duration_str), dateRelease, Float.parseFloat(rate_str), national, categorys, director, stars, language, describel, "", "", trailer_link);
            m.setId(id);
            request.setAttribute("item", m);
            request.setAttribute("id", id);
            request.getRequestDispatcher("Admin_Movie_Update.jsp").forward(request, response);
        } else {
            String delImgPath = getServletContext().getRealPath("Assets/Image/Movie_Image_Vip/") + File.separator + old.getMovie_img();
            String delTrailerPath = getServletContext().getRealPath("Assets/Image/Movie_Trailer_Image/") + File.separator + old.getMovie_trailer();
            File imgDelete = new File(delImgPath);
            File trailerDelete = new File(delTrailerPath);
            if (imgDelete.delete() && trailerDelete.delete()) {
                System.out.println("File deleted successfully");
            } else if (imgDelete.delete() || trailerDelete.delete()) {
                System.out.println("Some file can't be delete!");
            } else {
                System.out.println("Failed to delete the file");
            }
//          Delete old file end

            String uploadPath = getServletContext().getRealPath("Assets/Image/Movie_Image_Vip/") + File.separator + fileName;
            String uploadPath2 = getServletContext().getRealPath("Assets/Image/Movie_Trailer_Image/") + File.separator + fileName2;
            System.out.println(uploadPath);
            System.out.println(uploadPath2);
            try {
                FileOutputStream fos = new FileOutputStream(uploadPath);
                InputStream is = filePart.getInputStream();
                byte[] data = new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            } catch (IOException e) {
            }
            try {
                FileOutputStream fos = new FileOutputStream(uploadPath2);
                InputStream is = filePart2.getInputStream();
                byte[] data = new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            } catch (IOException e) {
            }
            try {
                int duration = Integer.parseInt(duration_str);
                float rate = Float.parseFloat(rate_str);

                Movie movie = new Movie(nameOfMovie, duration, dateRelease, rate, national, categorys, director, stars, language,
                        describel,
                        fileName,
                        fileName2,
                        trailer_link
                );
                System.out.println("mivie: " + movie);
                //  SQL QUERY
                dao.updateMovie(id, movie);
                response.sendRedirect("ListMovie");
            } catch (IOException | NumberFormatException e) {
                System.out.println("ERROR IN : UpdateMovieServlet.java ");
            }
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
