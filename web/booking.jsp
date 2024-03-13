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
                                <span id="locationText">Cần Thơ</span> <!-- Thêm id="locationText" vào đây -->
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
                                            <img src="./Assets/Image/Movie_Image_Vip/${m.movie_img}" alt="Quỷ Cẩu">
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
                        <label for="showtime">Chọn Suất</label>
                        <i class="fa-solid fa-chevron-down" id="showtimeArrow"></i>
                    </div>
                    <!-- <a class="showtime-list" id="showtimeList"></a> -->
                    <span id="selectedShowtimeInfo"> </span>
                    <div class="showtime-info" id="showtimeInfo" style="display: none;">
                        <div class="showtimeList">
                        </div>
                        <div class="date">
                            <div>
                                <span>03/07/2024</span>
                            </div>
                        </div>
                        <div class="timecinema">
                            <h3>Galaxy Nguyễn Văn Quá</h3>
                            <div class="timedetails">
                                <a>2D Phụ Đề</a>
                                <div class="time-item">
                                    <div >
                                        <span>08:00 AM</span>
                                    </div>
                                    <div >
                                        <span>11:00 AM</span>
                                    </div>
                                    <div >
                                        <span>2:00 PM</span>
                                    </div>
                                    <div>
                                        <span>6:00 PM</span>
                                    </div>
                                </div>
                            </div>
                            <hr class="separator-line">
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
                        <p>Suất: <span id="galaxyShowtime"></span></p>
                        <!-- Thêm đường gạch đứt sau phần suất -->
                        <hr class="separator-line">
                    </div>
                    <div class="total">
                        <a class="movie-price">
                            <p>Tổng cộng: </p>
                        </a>
                        <a class="movie-price">
                            <p>0đ </p>
                        </a>
                    </div>
                </div>
                <div class="navigation-buttons">
                    <a href="home">
                        <button class="back-button">Quay lại</button>
                    </a>
                    <a >
                        <button class="continue-button" ">Tiếp tục</button>
                    </a>
                </div>
            </div>
        </section>
        <script src="Assets/JS/booking.js" type="text/javascript"></script>
  
        
        <!--Đường dẫn  đến trang CreateSeatPage -->
<!--        <script>
            function redirectToCreateSeatPage() {
                window.location.href = "CreateSeatPage.jsp"; 
            }
        </script>-->
    </body>
    <%@include file='./Components/Footer.jsp' %>
</html>