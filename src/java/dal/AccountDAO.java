/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.Account;
import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class AccountDAO extends DBContext {

    public Account login(String emailOrPhone, String password) {
        String sql = "SELECT [user_id]\n"
                + "      ,[fullname]\n"
                + "      ,[password]\n"
                + "      ,[phone]\n"
                + "      ,[email]\n"
                + "      ,[role]\n"
                + "      ,[user_image]\n"
                + "      FROM [dbo].[Users]"
                + "  WHERE (email = ? OR phone = ?)\n"
                + "      AND [password] = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, emailOrPhone);
            st.setString(2, emailOrPhone);
            st.setString(3, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getString("fullName"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("password"),
                        rs.getString("user_image"),
                        rs.getInt("role"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static void main(String[] args) {
        AccountDAO da = new  AccountDAO();
        Account a = da.login("111111", "123");
        System.out.println(a);
    }
}
