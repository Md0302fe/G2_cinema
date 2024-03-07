/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MinhDuc
 */
public class Schedules {

    private int id;
    private String handle_schedules_id;
    private String date_id;
    private String schedules_showtime;

    public Schedules(int id, String handle_schedules_id, String date_id, String schedules_showtime) {
        this.id = id;
        this.handle_schedules_id = handle_schedules_id;
        this.date_id = date_id;
        this.schedules_showtime = schedules_showtime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHandle_schedules_id() {
        return handle_schedules_id;
    }

    public void setHandle_schedules_id(String handle_schedules_id) {
        this.handle_schedules_id = handle_schedules_id;
    }

    public String getDate_id() {
        return date_id;
    }

    public void setDate_id(String date_id) {
        this.date_id = date_id;
    }

    public String getSchedules_showtime() {
        return schedules_showtime;
    }

    public void setSchedules_showtime(String schedules_showtime) {
        this.schedules_showtime = schedules_showtime;
    }

}
