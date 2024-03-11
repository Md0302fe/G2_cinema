/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author pts03
 */
public class Booking {

    private int booking_id;
    private int user_id;
    private String total_price;
    private String booking_date;
    private String choiceDate;
    private String choiceTime;
    private String seatList;
    private String payment;

    public Booking(int user_id, String total_price, String choiceDate, String choiceTime, String seatList, String payment) {
        this.user_id = user_id;
        this.total_price = total_price;
        this.choiceDate = choiceDate;
        this.choiceTime = choiceTime;
        this.seatList = seatList;
        this.booking_date = getCurrentDateTime();
        this.payment = payment;
    }

    public Booking() {
    }

    public int getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(int booking_id) {
        this.booking_id = booking_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getTotal_price() {
        return total_price;
    }

    public void setTotal_price(String total_price) {
        this.total_price = total_price;
    }

    public String getBooking_date() {
        return booking_date;
    }

    public void setBooking_date(String booking_date) {
        this.booking_date = booking_date;
    }
    
    public String getSeatList() {
        return seatList;
    }

    public void setSeatList(String seatList) {
        this.seatList = seatList;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getChoiceDate() {
        return choiceDate;
    }

    public void setChoiceDate(String choiceDate) {
        this.choiceDate = choiceDate;
    }

    public String getChoiceTime() {
        return choiceTime;
    }

    public void setChoiceTime(String choiceTime) {
        this.choiceTime = choiceTime;
    }
    

    private String getCurrentDateTime() {
        // Get the current date and time in the desired format
        LocalDateTime currentDateTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        return currentDateTime.format(formatter);
    }
}
