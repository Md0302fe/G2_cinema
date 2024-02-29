/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Account1;
/**
 *
 * @author pts03
 */
public class EditProfileDAO extends DBContext{
    public boolean updateUserProfile(Account1 user) {
         String sql = "UPDATE users SET fullname=?, email=?, phone=?, password=? WHERE user_id=?";
          try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,user.getFullName());
            st.setString(2, user.getEmail());
            st.setString(3, user.getPhone());
            st.setString(4, user.getPassword());
            st.setString(5, user.getUser_id());

            int rowsUpdated = st.executeUpdate();

            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    }

