/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;
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

    public static void main(String[] args) {

    }
}
