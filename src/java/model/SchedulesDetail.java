/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author GIA TIEN
 */
public class SchedulesDetail {

    private String schedules_id;
    private String handle_Schedules_id;
    private String movie_name;
    private String room_name;
    private String schedules_showtime;

    public SchedulesDetail(String schedules_id, String handle_Schedules_id, String movie_name, String room_name, String schedules_showtime) {
        this.schedules_id = schedules_id;
        this.handle_Schedules_id = handle_Schedules_id;
        this.movie_name = movie_name;
        this.room_name = room_name;
        this.schedules_showtime = schedules_showtime;
    }

    public SchedulesDetail() {

    }

    public String getHandle_Schedules_id() {
        return handle_Schedules_id;
    }

    public void setHandle_Schedules_id(String handle_Schedules_id) {
        this.handle_Schedules_id = handle_Schedules_id;
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
        StringBuilder sb = new StringBuilder();
        sb.append("SchedulesDetail{");
        sb.append("schedules_id=").append(schedules_id);
        sb.append(", handle_Schedules_id=").append(handle_Schedules_id);
        sb.append(", movie_name=").append(movie_name);
        sb.append(", room_name=").append(room_name);
        sb.append(", schedules_showtime=").append(schedules_showtime);
        sb.append('}');
        return sb.toString();
    }
}
