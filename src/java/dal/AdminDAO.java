/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import model.Date;
import model.Movie;
import model.MovieID;
import model.Room;

/**
 * THIS FILE HELP CONNECTION AND REPAIRED SQL .
 *
 * @author MinhDuc
 */
public class AdminDAO extends DBContext {

    private static ArrayList<Integer> listMovieId = null;
    private static ArrayList<Integer> current_List_Movie_id = null;
    private static ArrayList<Room> List_Of_Room = null;

    public ArrayList<Room> list_Room = new ArrayList<>();

    public void add_Movie_Admin(Movie movie) {
        String sql = "INSERT INTO [dbo].[Movie]\n"
                + "           ([movie_name]\n"
                + "           ,[duration]\n"
                + "           ,[release_date]\n"
                + "           ,[rate]\n"
                + "           ,[national]\n"
                + "           ,[list_category]\n"
                + "           ,[director]\n"
                + "           ,[actors]\n"
                + "           ,[language]\n"
                + "           ,[movie_description]\n"
                + "           ,[image]\n"
                + "           ,[trailer])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, movie.getName());
            st.setInt(2, movie.getDuration());
            st.setString(3, movie.getRelease_date());
            st.setFloat(4, movie.getRate());
            st.setString(5, movie.getNational());
            st.setString(6, movie.getList_category());
            st.setString(7, movie.getDirector());
            st.setString(8, movie.getActors());
            st.setString(9, movie.getLanguages());
            st.setString(10, movie.getDescription());
            st.setString(11, movie.getMovie_img());
            st.setString(12, movie.getMovie_trailer());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ADD MOVIE ADMIN " + e);
        }
    }

    public void add_Date_Admin(Date date) {
        String sql = "INSERT INTO [dbo].[Release_date]\n"
                + "           ([show_date])\n"
                + "     VALUES\n"
                + "           (?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date.getShow_date());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR IN Add_Date_Admin " + e);
        }
    }

    public ArrayList<Movie> getAllMovie() {
        String sql = "select *from movie";
        ArrayList<Movie> listMovie = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Movie movie = new Movie(rs.getString("movie_name"),
                        rs.getInt("duration"),
                        rs.getString("release_date"),
                        rs.getFloat("rate"),
                        rs.getString("national"),
                        rs.getString("list_category"),
                        rs.getString("director"),
                        rs.getString("actors"),
                        rs.getString("language"),
                        rs.getString("movie_description"),
                        rs.getString("image"),
                        rs.getString("trailer"));
                listMovie.add(movie);
            }
        } catch (SQLException e) {
            System.out.println("getAllMovie Dal Error");
        }
        return listMovie;
    }

    public ArrayList<Integer> getAllMovieID() {
        String sql = "select movie_id from Movie";
        ArrayList<Integer> list_Movie_Id = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list_Movie_Id.add(rs.getInt("movie_id"));
            }
        } catch (SQLException e) {
            System.out.println("getAllMovie Dal Error");
        }
        return list_Movie_Id;
    }

    public ArrayList<Integer> getAllRoomID() {
        String sql = "select *from Rooms";
        ArrayList<Integer> List_Id_Room = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                List_Id_Room.add(rs.getInt("room_id"));
            }
        } catch (SQLException e) {
            System.out.println("GET ALL ROOM ID Dal Error");
        }
        return List_Id_Room;
    }

    public ArrayList<Room> getAll_DataRoom() {
        String sql = "select *from Rooms";
        ArrayList list_room = new ArrayList<>();
        Room r = new Room();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list_room.add(new Room(rs.getInt("room_id"), rs.getString("room_name"), 0, rs.getInt("room_status")));
            }
        } catch (SQLException e) {
            System.out.println("GET ALL ROOM ID Dal Error");
        }
        return list_room;
    }

    public Room getRandom_FromListRoom(ArrayList list) {
        Random random = new Random();
        int arrLenght = list.size();
        int randomIndex = random.nextInt(arrLenght);
        Room output = (Room) list.get(randomIndex);
        return output;
    }

    public int getRandomFromListId(ArrayList list) {
        Random random = new Random();
        int arrLenght = list.size();
        int randomIndex = random.nextInt(arrLenght);
        int output = (int) list.get(randomIndex);
        return output;
    }

    public ArrayList<Room> getAllRoom() {
        ArrayList list_room = new ArrayList<>();
        // list chứa các movie_id : Lấy ra tất cả các id của phim có trong database.
        ArrayList list_movie_id = getAllMovieID();
        return list_room;
    }

    // CODE HANDLE SET UP SCHEDULES - DATE - SHOWTIME FOR MOVIE !
    public void setUp_Handle_Schedules(Date thisDate) {
        // get All Data From Room
        list_Room = getAll_DataRoom();
        System.out.println("Lít_Room: " + list_Room);
        // thisDate chính là biến chứa ngày người dùng nhập vào.
        // Array : List of handle_Schedules : danh sách của bộ lưu trữ lịch chiếu theo time (Lưu các Schedules).
        ArrayList<String> handle_time = new ArrayList<>(Arrays.asList(
                "T-9", "T-9-30", "T-10", "T-10-30", "T-11", "T-11-30", "T-12", "T-12-30",
                "T-13", "T-13-30", "T-14", "T-14-30", "T-15", "T-15-30", "T-16", "T-16-30",
                "T-17", "T-17-30", "T-18", "T-18-30", "T-19", "T-19-30", "T-20", "T-20-30",
                "T-21", "T-21-30", "T-22", "T-22-30", "T-23"));

        // bước tiếp theo : với mỗi handle_id sẽ kèm theo các khung giờ chiếu trong mỗi handle_id
        for (String handle : handle_time) {
            // sử lý key id cho date_hande -> handle_id 
            String date_handle = handle + ":" + thisDate.getShow_date();
            // sử lý từng handle
            setUp_Schedules(thisDate, date_handle);
            Save_Handle_Schedules(thisDate, date_handle);
        }
    }


    /* sau khi đã có được id của bộ quản lý khung chiếu
    b1: tạo ra biến random : random xem có bao nhiêu phim được chiếu tại lúc này.
     */
    public void setUp_Schedules(Date thisDate, String handle_id) {
        Random random = new Random();
        String schedules_id;
        // list này sinh ra để lưu khung giờ chiếu : vd T-9 xong thì save object T-9 vào list này
        ArrayList list_schedules = new ArrayList<>();

        //  random số slot cần chíu trong khung giờ này : ví dụ trong khung T-9 có 3 slot chiếu.
        int number_of_schedules = random.nextInt(4) + 2;

        // list chứa các movie_id : Lấy ra tất cả các id của phim có trong database.
        ArrayList list_movie_id = getAllMovieID();
        // tạo 1 list backup cho việc : chọn movie
        ArrayList<Integer> coppy_List_movie_id = new ArrayList<>(list_movie_id);

        // list chứa các room_id : int
        ArrayList<Integer> list_id_room = getAllRoomID();
        // tạo 1 list backup cho việc : chọn room
        ArrayList<Integer> coppy_List_room_id = new ArrayList<>(list_id_room);

        // list chứa các room : object
        ArrayList<Room> list_room = list_Room;
        // tạo 1 list backup cho việc : chọn room
        ArrayList<Room> coppy_List_room = new ArrayList<>(list_room);

        // list chứa các Rooms_ID : Lấy ra tất cả các Room trong database.
        // list này sinh ra để lưu các suất chiếu của 1 khung giờ chiếu (handle_id)
        ArrayList list_member_schedules = new ArrayList<>();

        // vòng lặp này sẽ set dữ liệu cho từng slot trong khung chiếu.
        for (int i = 0; i < number_of_schedules; i++) {
            // setUp : 1 phim cho 1 slot chiếu trong 1 khung giờ chiếu.
            schedules_id = handle_id + "@" + i;
            setUp_Movie(thisDate, handle_id, schedules_id, coppy_List_movie_id, coppy_List_room);
        }

    }

    /**
     *
     * @param handle_id
     * @param coppy_List_movie_id
     * @param coppy_List_room
     */
    public void setUp_Movie(Date thisDate, String handle_id, String schedules_id, ArrayList coppy_List_movie_id, ArrayList coppy_List_room) {
        // list_movie_id : lấy ra list_id của các phim : lưu ý có thể là không liên tục !
        // SET MOVIE :
        int random_movie = getRandomFromListId(coppy_List_movie_id);

        // sau khi đã chọn ra được 1 phim : xóa phần tử trong mảng list_movie_id 
        coppy_List_movie_id.remove(Integer.valueOf(random_movie));

        // SET ROOM :
        // Random ra phòng cho phim áp dụng thuật toán không trùng giống như random movie.
        Room room = getRandom_FromListRoom(coppy_List_room);

        // Sau khi lấy được id của movie ra rồi thì set phòng cho movie đó.
        if (checkRoom_Available(room)) {
            // lúc này phòng ok thì sẽ trả về 1 Object chứa full tt nãy giờ làm.
            // Map<String,Object> result = new HashMap<>();
            System.out.println("handle_id: " + handle_id + " Schedules_id: " + schedules_id + " selected Movie : " + random_movie + " selected Room " + room);
            // Nếu Room hợp lý thì save đống này vào dataBase
            /* Cần lưu vào : 
                           + Handle_Schedules
                           + Schedules
             */
            Save_Data(thisDate, handle_id, schedules_id, random_movie, room);
        }
        // Nếu room đó không hợp lệ thì next để sang khung chiếu khác.
        coppy_List_room.remove(room);
    }

    public void Save_Data(Date thisDate, String handle_id, String schedules_id, int random_movie, Room room) {
        Save_Schedules(handle_id, schedules_id, random_movie, room);
    }

    public void Save_Handle_Schedules(Date thisDate, String handle_id) {
        String sql = "INSERT INTO [dbo].[Handle_Schedules]\n"
                + "           ([handle_schedules_id]\n"
                + "           ,[show_date])\n"
                + "     VALUES\n"
                + "           (?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, handle_id);
            st.setString(2, thisDate.getShow_date());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println("ERROR IN Save_Handle_Schedules : " + e);
        }
    }

    public void Save_Schedules(String handle_id, String schedules_id, int random_movie, Room room) {
        String sql = "INSERT INTO [dbo].[Schedules]\n"
                + "           ([schedules_id]\n"
                + "           ,[handle_schedules_id]\n"
                + "           ,[movie_id]\n"
                + "           ,[room_id])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, schedules_id);
            st.setString(2, handle_id);
            st.setInt(3, random_movie);
            st.setInt(4, room.getId());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println("ERROR IN Save_Schedules : " + e);
        }
    }

    public boolean checkRoom_Available(Room room) {
        int timeSet = 0;
        if (room.getRemain_time() == 0) {
            room.setRemain_time(150);
            return true;
        } else {
            timeSet = (room.getRemain_time() - 30);
            if (timeSet == 0) {
                room.setRemain_time(0);
                return false;
            }
            room.setRemain_time(timeSet);
            return false;
        }
    }

    public int get_IdDate_By_ShowDate(String showDate) {
        String sql = "select *from Release_date d where d.show_date = ?";
        int result;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, showDate);
            ResultSet rs = st.executeQuery();
            if (rs != null) {
                result = rs.getInt("date_id");
                return result;
            }
        } catch (Exception e) {
            System.out.println("get_Date_By_ShowDate Error " + e);
        }
        return 0;
    }

    public static void main(String[] args) {

    }
}
