<%-- 
    Document   : DetailMovies
    Created on : Feb 22, 2024, 7:41:02 AM
    Author     : GIA TIEN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Movie Details</title>
        <link href="Assets/Styles/DetailMovies.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/gridTien.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/header.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/footer.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito Sans">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="./Assets/Styles/themify-icons-font/themify-icons/themify-icons.css"
    </head>
    <body>
        <%@include file='./Components/Header.jsp' %>
        <div class="main">
            <div class="book_ticket_wrapper">
                <div class="relative bg-black flex justify-center w-full h-full">
                    <div class="poster-container">
                        <img
                            class="background-image poster"
                            src="./Assets/Image/Movie_Trailer_Image/${movie.movie_trailer}"
                            alt="Background Image"/>
                        <button
                            class="play-button"
                            onclick="openModal()">
                            <img class="img_play" src="./Assets/Image/Movies_Image/button-play.png" alt="Img Play" >
                        </button>
                    </div>
                </div>

                <div class="modal" id="videoModal" onclick="closeModal()">
                    <iframe class="rounded-3" width="560" height="315" src="${movie.trailer_link}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </div>

                <div class="all_content grid wide">
                    <div class="movie_info">
                        <div class="main_content_left">
                            <div class="main_content1 font-semibold">
                                <div class="">
                                    <img
                                        class="movie_thumbnail border border-2 rounded"
                                        src="./Assets/Image/Movie_Image_Vip/${movie.movie_img}"
                                        alt=""/>
                                </div>

                                <div class="movie_detail">

                                    <div class="movie_name flex">
                                        <h2 class="movie_mvo bold">${movie.name}</h2>
                                        <p class="movie_rated border border-1 rounded">T18</p>
                                    </div>

                                    <div class="movie_time flex">
                                        <p class="movie_minute"><i class="ti-timer"></i>${movie.duration}</p>
                                        <p class="movie_calendar"><i class="ti-clipboard"></i>${movie.release_date}</p>
                                    </div>

                                    <div class="movie_voting flex">
                                        <p class="movie_point"><i class="ti-star"></i>${movie.rate}</p>
                                        <p class="movie_votes">(111 votes)</p>
                                    </div>

                                    <p class="country">Quốc gia: ${movie.national}</p>
                                    <p class="movie_title">Thể loại: ${movie.list_category}</p>
                                    <p class="movie_director">Đạo diễn: ${movie.director}</p>
                                    <p class="movie_actors">
                                        Diễn viên: ${movie.actors}
                                    </p>
                                    <p class="movie_language">Ngôn ngữ: ${movie.languages}</p>
                                </div>
                            </div>

                            <div class="main_content2">
                                <div class="col_ndp flex">
                                    <span class="orange_col"></span>
                                    <p class="ndp bold ">Nội Dung Phim</p>
                                </div>
                                <p class="ndp_word">${movie.description}</p>
                            </div>

                            <div class="showtimes">
                                <div class="lc_col flex">
                                    <span class="orange_col"></span>
                                    <p class="lc bold">Lịch Chiếu - Vincom Xuân Khánh</p>
                                </div>
                                <p class="line"></p>

                                <div class="showtime_list">
                                    <p class="list_day font-monospace bold "><i class="ti-calendar"></i>22/01</p>
                                    <div class="showtime_cinema">
                                        <div class="showtime_bundle">
                                            <p class="Subtitles font-semibold">2D Phụ Đề</p>
                                            <div class="time_slot">
                                                <button class="time_slot1 border border-1 font-semibold">09:30</button>
                                                <button class="time_slot1 border border-1 font-semibold">11:30</button>
                                                <button class="time_slot1 border border-1 font-semibold">13:30</button>
                                                <button class="time_slot1 border border-1 font-semibold">15:30</button>
                                                <button class="time_slot1 border border-1 font-semibold">17:30</button>
                                                <button class="time_slot1 border border-1 font-semibold">18:30</button>
                                                <button class="time_slot1 border border-1 font-semibold">19:30</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <p class="line"></p>

                                <div class="showtime_list">
                                    <p class="list_day font-monospace bold "><i class="ti-calendar"></i>23/01</p>
                                    <div class="showtime_cinema">
                                        <div class="showtime_bundle">
                                            <p class="Subtitles font-semibold">2D Phụ Đề</p>
                                            <div class="time_slot">
                                                <button class="time_slot1 border border-1 font-semibold">09:45</button>
                                                <button class="time_slot1 border border-1 font-semibold">11:40</button>
                                                <button class="time_slot1 border border-1 font-semibold">13:30</button>
                                                <button class="time_slot1 border border-1 font-semibold">16:00</button>
                                                <button class="time_slot1 border border-1 font-semibold">17:00</button>
                                                <button class="time_slot1 border border-1 font-semibold">18:00</button>
                                                <button class="time_slot1 border border-1 font-semibold">18:30</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <p class="line"></p>

                                <div class="showtime_list">
                                    <p class="list_day font-monospace bold "><i class="ti-calendar"></i>24/01</p>
                                    <div class="showtime_cinema">
                                        <div class="showtime_bundle">
                                            <p class="Subtitles font-semibold">2D Phụ Đề</p>
                                            <div class="time_slot">
                                                <button class="time_slot1 border border-1 font-semibold">10:00</button>
                                                <button class="time_slot1 border border-1 font-semibold">11:15</button>
                                                <button class="time_slot1 border border-1 font-semibold">13:15</button>
                                                <button class="time_slot1 border border-1 font-semibold">14:30</button>
                                                <button class="time_slot1 border border-1 font-semibold">17:00</button>
                                                <button class="time_slot1 border border-1 font-semibold">19:00</button>
                                                <button class="time_slot1 border border-1 font-semibold">20:00</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <p class="line"></p>

                            </div>

                        </div>

                        <div class="main_content_right">
                            <div class="now-playing" style="padding-top: 20px; width: 100%">
                                <div class="nowplaying_orange_col flex">
                                    <span class="orange_col"></span>
                                    <h1 class="text uppercase">Phim Đang Chiếu</h1>
                                </div>
                                <c:forEach items="${requestScope.listMovie}" var="m">
                                    <div class="all-movie-playing1">
                                        <a href="MovieDetailServlet?id=${m.id}" style="display: block">
                                            <img
                                                class="now-playing-beekeeper rounded"
                                                src="./Assets/Image/Movie_Trailer_Image/${m.movie_trailer}"
                                                alt="poster"
                                                width="300"
                                                height="200"
                                                style="color: transparent" />
                                        </a>
                                        <p
                                            href=""
                                            class="now-playing-beekeeper-name font-semibold"
                                            style="width: 400px; padding-top: 10px">
                                            <i class="ti-ticket"></i>
                                            ${m.name}
                                        </p>
                                    </div>
                                </c:forEach>
                            </div>

                            <div class="see_more_button">
                                <a href="" class="see_more border border-2 rounded" style="border: solid 1px rgb(242, 107, 56)!important;">
                                    Xem Thêm 
                                    <i class="ti-angle-right"></i>
                                </a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="Assets/JS/detailMovie.js" type="text/javascript"></script>
        <%@include file='./Components/Footer.jsp' %>