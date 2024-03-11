/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.List;

/**
 *
 * @author MinhDuc
 */
public class SeatData {

    private String id;
    private String date;
    private String choice_time;
    private String room_name;
    private String total_price;
    private String selectedSeats; // Danh sách các ghế đã chọn

    public SeatData(String id, String date, String choice_time, String room_name, String total_price, String selectedSeats) {
        this.id = id;
        this.date = date;
        this.choice_time = choice_time;
        this.room_name = room_name;
        this.total_price = total_price;
        this.selectedSeats = selectedSeats;
    }

    public SeatData() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getChoice_time() {
        return choice_time;
    }

    public void setChoice_time(String choice_time) {
        this.choice_time = choice_time;
    }

    public String getRoom_name() {
        return room_name;
    }

    public void setRoom_name(String room_name) {
        this.room_name = room_name;
    }

    public String getTotal_price() {
        return total_price;
    }

    public void setTotal_price(String total_price) {
        this.total_price = total_price;
    }

    public String getSelectedSeats() {
        return selectedSeats;
    }

    public void setSelectedSeats(String selectedSeats) {
        this.selectedSeats = selectedSeats;
    }

    @Override
    public String toString() {
        return "SeatData{" + "id=" + id + ", date=" + date + ", choice_time=" + choice_time + ", room_name=" + room_name + ", total_price=" + total_price + ", selectedSeats=" + selectedSeats + '}';
    }

}
