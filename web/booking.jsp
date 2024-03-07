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
        <link href="Assets/Styles/header.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/footer.css" rel="stylesheet" type="text/css"/>
        <title>Galaxy Cinema</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    </head>

    <body>
        <%@include file='./Components/Header.jsp' %>
        <!--    <nav>
                <a href="#">Chọn phim / Rạp / Suất</a>
                <a href="#">Chọn ghế</a>
                <a href="#">Chọn thức ăn</a>
                <a href="#">Thanh toán </a>
                <a href="#">Xác nhận</a>
            </nav>-->
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
                                        <a href="bookingsvl" data-movie-id="${m.id}">
                                            <img src="./Assets/Image/Movies_Image/${m.movie_img}" alt="Quỷ Cẩu">
                                        </a>
                                        <span>${m.name} </span>
                                    </div> 
                                </c:forEach>
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
                    <div class="showtime-info" id="showtimeInfo" style="display: none">
                        <p>
                        <div class="movielist" id="showData_date">                                
                            <c:forEach items="${listDate}" var="date">
                                <div class="movie-item">
                                    <a href="#">
                                        <span>${date.name} </span>
                                    </a>
                                </div> 
                            </c:forEach>
                        </div>
                        </p>
                    </div>
                </div>
            </div>
            <!--Khung bên phải -->
            <div>
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
                    <button class="back-button">Quay lại</button>
                    <button class="continue-button">Tiếp tục</button>
                </div>
            </div>
        </section>
        <script src="Assets/JS/booking.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".movie-item a").click(function (event) {
                    event.preventDefault(); // Ngăn chặn hành vi mặc định khi nhấp vào liên kết
                    var movieId = $(this).data("movie-id"); // Lấy ID phim từ thuộc tính data-movie-id của thẻ a
                    // Gửi yêu cầu AJAX
                    $.ajax({
                        url: "/CINEMA/bookingsvl",
                        method: "GET",
                        data: {movie_id: movieId}, // Truyền ID phim qua yêu cầu
                        success: function (respone) {
                            console.log("Thanh CONG")
                        },
                        error: function (xhr, status, error) {
                            // Xử lý lỗi nếu có
                            console.error("Lỗi trong quá trình gửi yêu cầu AJAX:", error);
                        }
                    });
                });
            });
        </script>
    </body>
    <%@include file='./Components/Footer.jsp' %>
</html>


