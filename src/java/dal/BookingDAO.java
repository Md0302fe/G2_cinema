/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MinhDuc
 */
public class BookingDAO extends DBContext {

    public ArrayList<String> getShowDateForBooking(String id) {
        ArrayList<String> Result = new ArrayList<>();
        String sql = "Select DISTINCT show_date\n"
                + "from Movie M\n"
                + "join Schedules S on M.movie_id = S.movie_id\n"
                + "join Handle_Schedules H on H.handle_schedules_id = S.handle_schedules_id\n"
                + "where S.movie_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Result.add(rs.getString("show_date"));
            }
            return Result;
        } catch (Exception e) {
            System.out.println("Get Show Date For Booking Error " + e);
        }
        return Result;
    }

    public ArrayList<String> getList_Showtimes(String movie_id, String date_id) {
        ArrayList<String> list = new ArrayList<>();
        String sql = "SELECT schedules_showtime \n"
                + "FROM Schedules S\n"
                + "JOIN Handle_Schedules H ON H.handle_schedules_id = S.handle_schedules_id\n"
                + "WHERE S.movie_id = ? AND H.show_date = ? \n"
                + "ORDER BY schedules_showtime ASC;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, movie_id);
            st.setString(2, date_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(rs.getString("schedules_showtime"));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        BookingDAO b = new BookingDAO();
        List<String> Result = b.getList_Showtimes("3", "2024-03-10");
        for (Object d : Result) {
            System.out.println("Time : " + d);
        }
    }
}
