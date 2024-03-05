/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Account;
/**
 *
 * @author pts03
 */
public class EditProfileDAO extends DBContext{
    public boolean updateUserProfile(String fullname, String password, String phone, String email , String id) {
         String sql = "UPDATE Users SET fullname=?, password=?, phone=?, email=? WHERE user_id=?";
          try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,fullname);
            st.setString(2, password);
            st.setString(3, phone);
            st.setString(4, email);
            st.setString(5, id);

            int rowsUpdated = st.executeUpdate();
              System.out.println(rowsUpdated);

            return rowsUpdated >0 ;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public static void main(String[] args) {
        EditProfileDAO e = new EditProfileDAO();
        e.updateUserProfile("sang", "19092005", "12345", "pts039444@gmail.com", "2");
    }
    }

