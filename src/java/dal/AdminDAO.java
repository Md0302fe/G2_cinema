/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Date;
import model.Movie;

/**
 * THIS FILE HELP CONNECTION AND REPAIRED SQL .
 *
 * @author MinhDuc
 */
public class AdminDAO extends DBContext {

    public void add_Movie_Admin(Movie movie) {
        String sql = "INSERT INTO [dbo].[Movie]\n"
                + "           ([movie_name]\n"
                + "           ,[duration]\n"
                + "           ,[release_date]\n"
                + "           ,[rate]\n"
                + "           ,[national]\n"
                + "           ,[list_category]\n"
                + "           ,[director]\n"
                + "           ,[actors]\n"
                + "           ,[language]\n"
                + "           ,[movie_description]\n"
                + "           ,[image]\n"
                + "           ,[trailer])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, movie.getName());
            st.setInt(2, movie.getDuration());
            st.setString(3, movie.getRelease_date());
            st.setFloat(4, movie.getRate());
            st.setString(5, movie.getNational());
            st.setString(6, movie.getList_category());
            st.setString(7, movie.getDirector());
            st.setString(8, movie.getActors());
            st.setString(9, movie.getLanguages());
            st.setString(10, movie.getDescription());
            st.setString(11, movie.getMovie_img());
            st.setString(12, movie.getMovie_trailer());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void add_Date_Admin(Date date) {

        String sql = "INSERT INTO [dbo].[Release_date]\n"
                + "           ([show_date])\n"
                + "     VALUES\n"
                + "           (?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date.getShow_date());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Movie> getListMovie() {
        List<Movie> list = new ArrayList<>();

        String sql = "SELECT [movie_id]\n"
                + "      ,[movie_name]\n"
                + "      ,[duration]\n"
                + "      ,[release_date]\n"
                + "      ,[rate]\n"
                + "      ,[national]\n"
                + "      ,[list_category]\n"
                + "      ,[director]\n"
                + "      ,[actors]\n"
                + "      ,[language]\n"
                + "      ,[movie_description]\n"
                + "      ,[image]\n"
                + "      ,[trailer]\n"
                + "  FROM [dbo].[Movie]";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                Movie movie = new Movie(rs.getString(2), rs.getInt(3), rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13));
                movie.setId(rs.getInt(1));
                list.add(movie);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Movie getMovieById(int id) {
        Movie movie = null;

        String sql = "SELECT [movie_id]\n"
                + "      ,[movie_name]\n"
                + "      ,[duration]\n"
                + "      ,[release_date]\n"
                + "      ,[rate]\n"
                + "      ,[national]\n"
                + "      ,[list_category]\n"
                + "      ,[director]\n"
                + "      ,[actors]\n"
                + "      ,[language]\n"
                + "      ,[movie_description]\n"
                + "      ,[image]\n"
                + "      ,[trailer]\n"
                + "  FROM [dbo].[Movie]"
                + "Where [movie_id] = ?";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                movie = new Movie(rs.getString(2), rs.getInt(3), rs.getString(4), rs.getFloat(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13));
                movie.setId(rs.getInt(1));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return movie;
    }

    public void updateMovie(int id ,Movie m) {
        String sql = "UPDATE [dbo].[Movie]\n"
                + "   SET [movie_name] = ?\n"
                + "      ,[duration] = ?\n"
                + "      ,[release_date] = ?\n"
                + "      ,[rate] = ?\n"
                + "      ,[national] = ?\n"
                + "      ,[list_category] = ?\n"
                + "      ,[director] = ? \n"
                + "      ,[actors] = ?\n"
                + "      ,[language] = ?\n"
                + "      ,[movie_description] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[trailer] = ?\n"
                + " WHERE [movie_id] = ?";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, m.getName());
            st.setInt(2, m.getDuration());
            st.setString(3, m.getRelease_date());
            st.setFloat(4, m.getRate());
            st.setString(5, m.getNational());
            st.setString(6, m.getList_category());
            st.setString(7, m.getDirector());
            st.setString(8, m.getActors());
            st.setString(9, m.getLanguages());
            st.setString(10, m.getDescription());
            st.setString(11, m.getMovie_img());
            st.setString(12, m.getMovie_trailer());
            st.setInt(13, id);
            st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

//    public static void main(String[] args) {
//        AdminDAO dao = new AdminDAO();
//        Movie m = dao.getMovieById(1);
//        System.out.println(m);
//    }
}
