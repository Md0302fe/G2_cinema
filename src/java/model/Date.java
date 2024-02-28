/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MinhDuc
 */
public class Date {

    private int date_id;
    private String show_date;

    public Date(String show_date) {
        this.show_date = show_date;
    }

    public int getDate_id() {
        return date_id;
    }

    public void setDate_id(int date_id) {
        this.date_id = date_id;
    }

    public String getShow_date() {
        return show_date;
    }

    public void setShow_date(String show_date) {
        this.show_date = show_date;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Date{");
        sb.append("date_id=").append(date_id);
        sb.append(", show_date=").append(show_date);
        sb.append('}');
        return sb.toString();
    }

}
