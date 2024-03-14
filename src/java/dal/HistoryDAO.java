/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import model.Booking;

/**
 *
 * @author pts03
 */
public class HistoryDAO extends DBContext{
    public ArrayList<Booking> getAccountModels(String userid) {
        ArrayList<Booking> account = new ArrayList<>();
        try{
            String sqlQuery = "select * from Bookings where [user_id]=?";
            PreparedStatement stm = connection.prepareStatement(sqlQuery);
            stm.setString(1, userid);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                account.add(new Booking(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
          return account;      
    }
    public static void main(String[] args) {
        HistoryDAO h = new HistoryDAO();
        //h.historyBooking(1);
    }
}
