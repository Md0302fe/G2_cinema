/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import model.Date;
/**
 *
 * @author MinhDuc
 */
public class Handle_Schedules {
    private String id;
    private int date_id;

    public Handle_Schedules(String id, int date_id) {
        this.id = id;
        this.date_id = date_id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getDate_id() {
        return date_id;
    }

    public void setDate_id(int date_id) {
        this.date_id = date_id;
    }

    @Override
    public String toString() {
        return "Handle_Schedules{" + "id=" + id + ", date_id=" + date_id + '}';
    }
}
