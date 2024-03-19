/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;


import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author ADMIN
 */
public class AccountDAO extends DBContext {

    private static final String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    private static final SecureRandom secureRandom = new SecureRandom();

    //email: kietzenin2023@gmail.com
    //Google app password: kacmwgkadtwpdnbj
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
                Account a = new Account(
                        rs.getInt("user_id"),
                        rs.getString("fullName"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("password"),
                        rs.getString("user_image"),
                        rs.getString("role"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Account getAccountByEmail(String email) {
        String sql = "SELECT [user_id]\n"
                + "      ,[fullname]\n"
                + "      ,[password]\n"
                + "      ,[phone]\n"
                + "      ,[email]\n"
                + "      ,[role]\n"
                + "      ,[user_image]\n"
                + "      FROM [dbo].[Users]"
                + "  WHERE email = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getString("fullName"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("password"),
                        rs.getString("user_image"),
                        rs.getString("role"));
                a.setId(rs.getInt("user_id"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }

    public String generateNewPass() {
        StringBuilder randomString = new StringBuilder(6);

        for (int i = 0; i < 6; i++) {
            int randomIndex = secureRandom.nextInt(CHARACTERS.length());
            char randomChar = CHARACTERS.charAt(randomIndex);
            randomString.append(randomChar);
        }

        return randomString.toString();
    }

    public boolean sendEmail(Account user, String code) {
        boolean test = false;

        String fromEmail = "kietzenin2023@gmail.com";
        String pass = "dlegcqrrydegcvem";

        String toEmail = user.getEmail();

        try {
            Properties pr = new Properties();
            pr.setProperty("mail.smtp.host", "smtp.gmail.com");
            pr.setProperty("mail.smtp.port", "587");
            pr.setProperty("mail.smtp.auth", "true");
            pr.setProperty("mail.smtp.starttls.enable", "true");

            pr.put("mail.smtp.socketFactory.port", "587");
            pr.put("mail.smtp.ssl.trust", "smtp.gmail.com");

            //get session
            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, pass);
                }
            });

            Message mess = new MimeMessage(session);
            mess.setFrom(new InternetAddress(fromEmail));
            mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

            mess.setSubject("Email Verification");
            mess.setText("Registration is almost ready. Please verify your account by using this code: " + code);

            //send
            Transport.send(mess);
            test = true;
        } catch (MessagingException e) {
            e.printStackTrace();
        }

        return test;
    }

    public boolean sendEmailReset(Account user, String code) {
        boolean test = false;

        String fromEmail = "kietzenin2023@gmail.com";
        String pass = "dlegcqrrydegcvem";

        String toEmail = user.getEmail();

        try {
            Properties pr = new Properties();
            pr.setProperty("mail.smtp.host", "smtp.gmail.com");
            pr.setProperty("mail.smtp.port", "587");
            pr.setProperty("mail.smtp.auth", "true");
            pr.setProperty("mail.smtp.starttls.enable", "true");

            pr.put("mail.smtp.socketFactory.port", "587");
            pr.put("mail.smtp.ssl.trust", "smtp.gmail.com");

            //get session
            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, pass);
                }
            });

            Message mess = new MimeMessage(session);
            mess.setFrom(new InternetAddress(fromEmail));
            mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

            mess.setSubject("Email Verification");
            mess.setText("Please verify your account by using this code: " + code);

            //send
            Transport.send(mess);
            test = true;
        } catch (MessagingException e) {
            e.printStackTrace();
        }

        return test;
    }

    public boolean resetPassword(Account acc) {
        boolean test = false;

        String fromEmail = "kietzenin2023@gmail.com";
        String pass = "dlegcqrrydegcvem";

        String toEmail = acc.getEmail();

        try {
            AccountDAO da = new AccountDAO();
            String newP = da.generateNewPass();
            da.changePassword(acc, newP);

            Properties pr = new Properties();
            pr.setProperty("mail.smtp.host", "smtp.gmail.com");
            pr.setProperty("mail.smtp.port", "587");
            pr.setProperty("mail.smtp.auth", "true");
            pr.setProperty("mail.smtp.starttls.enable", "true");

            pr.put("mail.smtp.socketFactory.port", "587");
            pr.put("mail.smtp.ssl.trust", "smtp.gmail.com");

            //get session
            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, pass);
                }
            });

            Message mess = new MimeMessage(session);
            mess.setFrom(new InternetAddress(fromEmail));
            mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

            mess.setSubject("Reset password successfully");
            mess.setText("This is your new password: " + newP);

            //send
            Transport.send(mess);
            test = true;
        } catch (MessagingException e) {
            e.printStackTrace();
        }

        return test;
    }

    public String generateMD5Hash(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(input.getBytes());
            byte[] digest = md.digest();

            // Chuyển byte array thành chuỗi hex
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(String.format("%02x", b));
            }

            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void register(Account acc) {
        String sql = "INSERT INTO Users (fullname, password, phone, email, role, user_image)\n"
                + "VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, acc.getFullName());
            st.setString(2, acc.getPassword());
            st.setString(3, acc.getPhone());
            st.setString(4, acc.getEmail());
            st.setString(5, acc.getRole());
            st.setString(6, acc.getPicture());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public boolean checkEmail(String email) {
        String sql = "SELECT COUNT(*) AS count FROM Users WHERE email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int count = rs.getInt("count");
                return count > 0; // If count is greater than 0, email already exists
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Default return if there's an exception or no matching email found
    }

    public boolean checkPhone(String phone) {
        String sql = "SELECT COUNT(*) AS count FROM Users WHERE phone = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, phone);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int count = rs.getInt("count");
                return count > 0; // If count is greater than 0, email already exists
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Default return if there's an exception or no matching email found
    }

    public void changePassword(Account acc, String newPass) {
        AccountDAO dao = new AccountDAO();
        String passCode = dao.generateMD5Hash(newPass);
        String sql = "UPDATE [dbo].[Users]\n"
                + "SET [password] = ?\n"
                + "WHERE user_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, passCode);
            st.setInt(2, acc.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        AccountDAO da = new AccountDAO();
        Account acc = da.getAccountByEmail("kietzenin2005@gmail.com");
        String newP = da.generateNewPass();
        da.changePassword(acc, "123");
    }
}
