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

    public boolean updateUserProfile(Account user) {
         String sql = "UPDATE users SET fullname=?, email=?, phone=?, password=? WHERE user_id=?";
          try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1,user.getFullName());
            st.setString(2, user.getEmail());
            st.setString(3, user.getPhone());
            st.setString(4, user.getPassword());
            st.setInt(5, user.getId());

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

