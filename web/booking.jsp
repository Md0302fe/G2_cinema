<%-- 
    Document   : booking
    Created on : Feb 22, 2024, 8:12:46 AM
    Author     : kenga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Assets/Styles/booking.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/footer.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/header.css" rel="stylesheet" type="text/css"/>
        <title>Galaxy Cinema</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    </head>
    <body>
        <%@include file='./Components/Header.jsp' %>
        <section>
            <!-- Phần "Chọn vị trí", "Chọn phim", và "Chọn suất" -->
            <div class="selection-container">
                <div class="location-selection">
                    <div class="flex-c">
                        <label for="location">Chọn vị trí</label>
                        <i class="fa-solid fa-chevron-down" id="locationArrow"></i>
                    </div>
                    <!-- <a class="location-list" id="locationList"></a> -->
                    <div class="locationlist">
                        <div class="location-item">
                            <p>
                            <div class="location-info" id="locationInfo">
                                <span id="locationText" style="border-radius: 5px; border-width: ">Cần Thơ</span> <!-- Thêm id="locationText" vào đây -->
                            </div>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="movie-selection-container">
                    <div class="movie-selection">
                        <div class="flex-c">
                            <label for="movie">Chọn phim</label>
                            <i class="fa-solid fa-chevron-down" id="movieArrow"></i>
                        </div>
                        <a class="movie-list" id="movieList"></a>
                        <div class="movie-info" id="movieInfo" style="display: none;">
                            <p>
                            <div class="movielist">
                                <c:forEach items="${requestScope.list}" var="m">
                                    <div class="movie-item">
                                        <a   data-movie-id="${m.id}">
                                            <img src="./Assets/Image/Movie_Image_Vip/${m.movie_img}" alt="Error Img"
                                                 onClick="sendSelectedMovieId('${m.id}')" style="border-radius: 8px">
                                        </a>
                                        <span>${m.name}</span>
                                    </div>
                                </c:forEach>
                            </div>
                            </p>
                        </div>
                        <div class="info-img" id="full">
                            <div class="selected-movie-info" id="selectedMovieInfo" style="display: none;">
                                <img id="selectedMovieImage" src="" alt="">
                                <p id="selectedMovieNameInfo"></p>
                            </div>
                        </div>
                        <div class="movie-hover-info" id="movieHoverInfo" style="display: none;">
                            <img id="hoverMovieImage" src="" alt="Hovered Movie Poster">
                            <p id="hoverMovieName"></p>
                        </div>
                    </div>
                </div>
                <div class="showtime-selection">
                    <div class="flex-c">
                        <label for="showtime">Chọn Ngày</label>
                        <i class="fa-solid fa-chevron-down" id="showtimeArrow"></i>
                    </div>
                    <!-- <a class="showtime-list" id="showtimeList"></a> -->
                    <span id="selectedShowtimeInfo"> </span>
                    <div class="showtime-info" id="showtimeInfo" style="display: none;">
                        <div class="date" id="date_booking" style="flex-wrap: wrap">
                            <div style="margin-bottom: 32px">
                                <h3>Vui Lòng Chọn Phim  ...</h3>                                 
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!--Khung bên phải -->
            <div class="fullbody">
                <div class="rounded"></div>
                <div class="movie-details-container">

                    <div class="movie-details-content">
                        <img id="galaxyMovieImage" src="" alt="">
                    </div>
                    <div>
                        <h2 id="galaxyMovieTitle">Movie Title</h2>
                    </div>
                    <div>
                        <p>Galaxy: <span id="galaxyLocation"></span></p>
                    </div>
                    <div>
                        <p>Suất: <span id="galaxyShowtime"> </span> </p>
                        <!-- Thêm đường gạch đứt sau phần suất -->
                        <hr class="separator-line">
                    </div>

                </div>
                <div class="navigation-buttons">
                    <a href="home">
                        <button class="back-button">Quay lại</button>
                    </a>
                    <a >
                        <button class="continue-button" onclick="sendDate()">Tiếp tục</button>
                    </a>
                </div>
            </div>
        </section>


        <script>
            var selectedMovieId;
            var selectedDate;
            function sendSelectedMovieId(movie_id) {
                selectedMovieId = movie_id; // Lưu giá trị của movie_id vào biến toàn cục
                $.ajax({
                    type: "POST",
                    url: "/CINEMA/bookingsvl",
                    data: {
                        movieId: movie_id
                    },
                    success: function (data) {
                        var row = document.getElementById("date_booking");
                        row.innerHTML = data;
                    }
                });
            }

            function handleDate(date) {
                selectedDate = date;
                const span = document.getElementById("galaxyShowtime");
                span.innerHTML = date;
            }

            function sendDate() {
                var url = "/CINEMA/seat?id=" + selectedMovieId + "&date=" + selectedDate;
                // Redirect the user to the new URL
                window.location.href = url;
            }

        </script>
        <script src="Assets/JS/booking.js" type="text/javascript"></script>
    </body>
    <%@include file='./Components/Footer.jsp' %>
</html>