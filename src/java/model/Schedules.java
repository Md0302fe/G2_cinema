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

    public Schedules(int id, String handle_schedules_id, String date_id) {
        this.id = id;
        this.handle_schedules_id = handle_schedules_id;
        this.date_id = date_id;
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
    
    
}
