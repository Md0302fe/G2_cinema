/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MinhDuc
 */
public class Movie {

    private int id;
    private String name;
    private int duration;
    private String release_date;
    private float rate;
    private String national;
    private String list_category;
    private String director;
    private String actors;
    private String languages;
    private String description;
    private String movie_img;
    private String movie_trailer;
    private String movie_status;

    public Movie(String name, int duration, String release_date, float rate, String national, String list_category, String director, String actors, String languages, String description, String movie_img, String movie_trailer) {
        this.name = name;
        this.duration = duration;
        this.release_date = release_date;
        this.rate = rate;
        this.national = national;
        this.list_category = list_category;
        this.director = director;
        this.actors = actors;
        this.languages = languages;
        this.description = description;
        this.movie_img = movie_img;
        this.movie_trailer = movie_trailer;
        this.movie_status = "1";
    }

    public Movie(int i, String movie_1, int i0, String string, float f, String usa, String action_Drama, String director_1, String actor_1_Actor_2, String english, String description_1, String movie1jpg, String trailer1mp4) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getRelease_date() {
        return release_date;
    }

    public void setRelease_date(String release_date) {
        this.release_date = release_date;
    }

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    public String getMovie_status() {
        return movie_status;
    }

    public void setMovie_status(String movie_status) {
        this.movie_status = movie_status;
    }

    public String getNational() {
        return national;
    }

    public void setNational(String national) {
        this.national = national;
    }

    public String getList_category() {
        return list_category;
    }

    public void setList_category(String list_category) {
        this.list_category = list_category;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getActors() {
        return actors;
    }

    public void setActors(String actors) {
        this.actors = actors;
    }

    public String getLanguages() {
        return languages;
    }

    public void setLanguages(String languages) {
        this.languages = languages;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMovie_img() {
        return movie_img;
    }

    public void setMovie_img(String movie_img) {
        this.movie_img = movie_img;
    }

    public String getMovie_trailer() {
        return movie_trailer;
    }

    public void setMovie_trailer(String movie_trailer) {
        this.movie_trailer = movie_trailer;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Movie{");
        sb.append("id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", duration=").append(duration);
        sb.append(", release_date=").append(release_date);
        sb.append(", rate=").append(rate);
        sb.append(", national=").append(national);
        sb.append(", list_category=").append(list_category);
        sb.append(", director=").append(director);
        sb.append(", actors=").append(actors);
        sb.append(", languages=").append(languages);
        sb.append(", description=").append(description);
        sb.append(", movie_img=").append(movie_img);
        sb.append(", movie_trailer=").append(movie_trailer);
        sb.append('}');
        return sb.toString();
//        return name + "\t" + duration + "\t" + movie_img;
    }
}
