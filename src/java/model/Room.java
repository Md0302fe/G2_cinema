/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MinhDuc
 */
public class Room {

    private int id;
    private String room_name;
    private int remain_time;
    private int status;

    public Room() {
    }

    public Room(int id, String room_name, int remain_time, int status) {
        this.id = id;
        this.room_name = room_name;
        this.remain_time = 0;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRoom_name() {
        return room_name;
    }

    public void setRoom_name(String room_name) {
        this.room_name = room_name;
    }

    public int getRemain_time() {
        return remain_time;
    }

    public void setRemain_time(int remain_time) {
        this.remain_time = remain_time;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Room{");
        sb.append("id=").append(id);
        sb.append(", room_name=").append(room_name);
        sb.append(", remain_time=").append(remain_time);
        sb.append(", status=").append(status);
        sb.append('}');
        return sb.toString();
    }

}
