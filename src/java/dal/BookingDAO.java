/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import model.Booking;

import model.Seat;

/**
 *
 * @author MinhDuc
 */
public class BookingDAO extends DBContext {

    // hàm này lấy ra các ngày mà phim này được chiếu , chỉ hiển thị > ngày hôm nay
    public ArrayList<String> getShowDateForBooking(String id, String Date) {
        ArrayList<String> Result = new ArrayList<>();
        String sql = "select DISTINCT show_date \n"
                + "from Movie m\n"
                + "join Schedules S on M.movie_id = S.movie_id\n"
                + "join Handle_Schedules H on S.handle_schedules_id = H.handle_schedules_id\n"
                + "where S.movie_id = ? AND H.show_date > ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, Date);
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

    public ArrayList<String> getList_Showtimes_Future(String movie_id, String date_id) {
        ArrayList<String> list = new ArrayList<>();
        String sql = "SELECT schedules_showtime\n"
                + "FROM Schedules S\n"
                + "JOIN Handle_Schedules H ON H.handle_schedules_id = S.handle_schedules_id\n"
                + "WHERE movie_id = ? AND H.show_date = ? \n"
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

    public String getRoomsId(String date, String movie_id, String show_time) {
        String sql = "select room_id\n"
                + "from Handle_Schedules H \n"
                + "join Schedules S on H.handle_schedules_id = S.handle_schedules_id\n"
                + "join Release_date D on H.show_date = D.show_date\n"
                + "where D.show_date = ? AND S.movie_id = ? AND S.schedules_showtime = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date);
            st.setString(2, movie_id);
            st.setString(3, show_time);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("room_id");
                return getNameByRoomsID(id);
            }
        } catch (Exception e) {
            System.out.println("Error in getRomsId " + e);
        }
        return null;
    }

    public String getNameByRoomsID(int id) {
        String sql = "select room_name from Rooms where room_id = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getString("room_name");
            }
        } catch (Exception e) {
            System.out.println("Error in getRomsId " + e);
        }
        return null;
    }

    public ArrayList<String> isValist_Seats(String date, String showtime, String movie_id) {
        ArrayList<String> Seats = new ArrayList<>();
        String sql = "select *from Seats S\n"
                + "where S.show_date = ? AND S.show_time = ? AND S.movie_id = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date);
            st.setString(2, showtime);
            st.setString(3, movie_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Seats.add(rs.getString("seat_name"));
            }
            return Seats;
        } catch (Exception e) {
            System.out.println("Error in isValist_Seats " + e);
        }
        return Seats;
    }

    public void AddSeat(Seat seat) {
        String sql = "INSERT INTO [dbo].[Seats]\n"
                + "           ([seat_name]\n"
                + "           ,[show_time]\n"
                + "           ,[movie_id]\n"
                + "           ,[room_name]\n"
                + "           ,[show_date])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, seat.getSeatName());
            st.setString(2, seat.getShowTime());
            st.setString(3, seat.getMovieId());
            st.setString(4, seat.getRoomName());
            st.setString(5, seat.getshowDate());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error in getRomsId " + e);
        }
    }

    public void addBooking(Booking booking) {
        String sql = "INSERT INTO [dbo].[Bookings]\n"
                + "           ([user_id]\n"
                + "           ,[total_price]\n"
                + "           ,[choice_date]\n"
                + "           ,[choice_time]\n"
                + "           ,[booking_date]\n"
                + "           ,[seat_list]\n"
                + "           ,[payment])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, String.valueOf(booking.getUser_id()));
            st.setString(2, booking.getTotal_price());
            st.setString(3, booking.getChoiceDate());
            st.setString(4, booking.getChoiceTime());
            st.setString(5, booking.getBooking_date());
            st.setString(6, booking.getSeatList());
            st.setString(7, booking.getPayment());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error in addBooking " + e);
        }
    }

    public static void main(String[] args) {
        BookingDAO b = new BookingDAO();
        ArrayList<String> seats = b.isValist_Seats("2024-03-11", "22:30", "1");
        for (String seat : seats) {
            System.out.println("seats : " + seat);
        }
    }

}
