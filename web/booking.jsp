<%-- 
    Document   : booking
    Created on : Feb 22, 2024, 8:12:46 AM
    Author     : kenga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Assets/Styles/booking.css" rel="stylesheet" type="text/css"/>
 
    <title>Galaxy Cinema</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

</head>
<script src="Assets/JS/booking.js" type="text/javascript"></script>


<body>

    <header>
        <h1>Galaxy Cinema</h1>
    </header>

    <nav>
        <a href="#">Chọn phim / Rạp / Suất</a>
        <a href="#">Chọn ghế</a>
        <a href="#">Chọn thức ăn</a>
        <a href="#">Thanh toán </a>
        <a href="#">Xác nhận</a>
    </nav>

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
                            <div class="movie-item">
                                <img src="Assets/Image/Movies_Image/movie-2.jpg" alt=""/>
                                <span>Quỷ cẩu </span>
                            </div>
                            <div class="movie-item">
                                <img src="Assets/Image/Movies_Image/movie-2.jpg" alt=""/>
                                <span>Quỷ cẩu </span>
                            </div>
                            <div class="movie-item">
                                <img src="Assets/Image/Movies_Image/movie-2.jpg" alt=""/>
                                <span>Quỷ cẩu </span>
                            </div>
                            <div class="movie-item">
                                <img src="Assets/Image/Movies_Image/movie-2.jpg" alt=""/>
                                <span>Quỷ cẩu </span>
                            </div>
                        </div>
                        </p>

                    </div>
                    <div class="info-img" id="full">
                        <div class="selected-movie-info" id="selectedMovieInfo" style="display: none;">
                            <img id="selectedMovieImage" src="" alt="Selected Movie Poster">
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
                <span id="selectedShowtimeInfo"></span>
                <div class="showtime-info" id="showtimeInfo" style="display: none;">

                    <div class="showtimeList">
                        <div class="showtime-item">
                            <span>08:00 AM</span>
                        </div>
                        <div class="showtime-item">
                            <span>11:00 AM</span>
                        </div>
                        <div class="showtime-item">
                            <span>2:00 PM</span>
                        </div>
                        <div class="showtime-item">
                            <span>6:00 PM</span>
                        </div>
                    </div>

                </div>
            </div>



        </div>

        <!--Khung bên phải -->
        <div>
            <div class="rounded"></div>
            <div class="movie-details-container">

                <div class="movie-details-content">
                    <img src="https://via.placeholder.com/300" alt="Movie Poster">
                </div>
                <div>
                    <h2>Movie Title</h2>
                </div>
                <div>
                    <p>Galaxy Cần Thơ - Rạp 1</p>
                </div>
                <div>
                    <p>Suất: 19:15 - Thứ Sáu, 19/01/2024</p>
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
                <button class="back-button">Quay lại</button>
                <button class="continue-button">Tiếp tục</button>
            </div>
        </div>

    </section>




</body>

</html>
