/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author GIA TIEN
 */
public class ScheduleDetail {

    private String schedules_id;
    private String movie_name;
    private String room_name;
    private String schedules_showtime;

    public ScheduleDetail(String schedules_id, String movie_name, String room_name, String schedules_showtime) {
        this.schedules_id = schedules_id;
        this.movie_name = movie_name;
        this.room_name = room_name;
        this.schedules_showtime = schedules_showtime;
    }

    public ScheduleDetail() {

    }

    public String getSchedules_id() {
        return schedules_id;
    }

    public void setSchedules_id(String schedules_id) {
        this.schedules_id = schedules_id;
    }

    public String getMovie_name() {
        return movie_name;
    }

    public void setMovie_name(String movie_name) {
        this.movie_name = movie_name;
    }

    public String getRoom_name() {
        return room_name;
    }

    public void setRoom_name(String room_name) {
        this.room_name = room_name;
    }

    public String getSchedules_showtime() {
        return schedules_showtime;
    }

    public void setSchedules_showtime(String schedules_showtime) {
        this.schedules_showtime = schedules_showtime;
    }

    @Override
    public String toString() {
        return "ScheduleDetail{" + "schedules_id=" + schedules_id + ", movie_name=" + movie_name + ", room_name=" + room_name + ", schedules_showtime=" + schedules_showtime + '}';
    }

}
