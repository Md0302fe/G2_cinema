/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MinhDuc
 */
public class Seat {

    private int id;
    private String seatName;
    private String showTime;
    private String movieId;
    private String RoomName;
    private String showDate;

    public Seat(String seatName, String showTime, String movieId, String RoomName, String showDate) {
        this.seatName = seatName;
        this.showTime = showTime;
        this.movieId = movieId;
        this.RoomName = RoomName;
        this.showDate = showDate;
    }

    public Seat() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSeatName() {
        return seatName;
    }

    public void setSeatName(String seatName) {
        this.seatName = seatName;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getRoomName() {
        return RoomName;
    }

    public void setRoomName(String RoomName) {
        this.RoomName = RoomName;
    }

    public String getshowDate() {
        return showDate;
    }

    public void setshowDate(String showDate) {
        this.showDate = showDate;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Seat{");
        sb.append("id=").append(id);
        sb.append(", seatName=").append(seatName);
        sb.append(", showTime=").append(showTime);
        sb.append(", movieId=").append(movieId);
        sb.append(", RoomName=").append(RoomName);
        sb.append(", showtime=").append(showDate);
        sb.append('}');
        return sb.toString();
    }

}
