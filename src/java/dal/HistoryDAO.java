/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;
import model.Booking;

/**
 *
 * @author pts03
 */
public class HistoryDAO extends DBContext {

    public Booking historyBooking(int user_id) {
        String sql = "SELECT [booking_id]\n"
                + "      ,[total_price]\n"
                + "      ,[booking_date]\n"
                + "      ,[booking_status]\n"
                + "      FROM [dbo].[Bookings]"
                + "  WHERE (user_id=?)\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, user_id);
            ResultSet rs = st.executeQuery();
//            if (rs.next()) {
//                Booking a = new Booking(rs.getInt("booking_id"), rs.getDouble("total_price"), rs.getString("booking_date"), rs.getInt("booking_status"));
//                return a;
//            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public static void main(String[] args) {
        HistoryDAO h = new HistoryDAO();
        h.historyBooking(1);
    }
}
