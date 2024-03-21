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
                                        <p style="margin-left: 5px;">Phút</p>
                                        <p class="movie_calendar"><i class="ti-clipboard"></i>${movie.release_date}</p>
                                    </div>
                                    <div class="movie_voting flex">
                                        <p class="movie_point bold"><i class="ti-star"></i>${movie.rate}</p>
                                        <p class="movie_votes">(111 votes)</p>
                                    </div>

                                    <div class="flex">    
                                        <p class="country bold">Quốc gia:</p><p style="margin-left: 10px;">${movie.national}</p>
                                    </div>
                                    <div class="flex"> 
                                        <p class="movie_title bold">Thể loại:</p><p style="margin-left: 10px;"> ${movie.list_category}</p>
                                    </div>
                                    <div class="flex"> 
                                        <p class="movie_director bold">Đạo diễn:</p><p style="margin-left: 10px;"> ${movie.director}</p>
                                    </div>
                                    <div class="flex"> 
                                        <p class="movie_actors bold">
                                            Diễn viên: <p style="margin-left: 10px;">${movie.actors}</p>
                                        </p>
                                    </div>
                                    <div class="flex">     
                                        <p class="movie_language bold">Ngôn ngữ:</p><p style="margin-left: 10px;"> ${movie.languages}</p>
                                    </div>
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
                                    <p class="lc bold">Lịch Chiếu - CGV CẦN THƠ </p>
                                </div>
                                <p class="line"></p>
                                <c:forEach items="${requestScope.StringDate}" var="d">
                                    <div class="showtime_list">
                                        <p class="list_day font-monospace bold ">                                            
                                            <i class="ti-calendar"></i>                                             
                                            <span class="date_span" >${d}</span>                                       
                                        </p>
                                        <div class="showtime_cinema"></div> <!-- Remove id="details_time" -->
                                    </div>
                                    <p class="line"></p>
                                </c:forEach>

                            </div>
                            <!--END SHOW TIME-->
                        </div>
                        <div class="main_content_right">
                            <div class="now-playing" style="padding-top: 20px; width: 100%">
                                <div class="nowplaying_orange_col flex">
                                    <span class="orange_col"></span>
                                    <h1 class="text uppercase">Phim Đang Chiếu</h1>
                                </div>
                                <c:forEach items="${requestScope.listMovie}" var="m" begin="0" end="2">
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
                                <a href="/CINEMA/home" class="see_more border border-2 rounded" style="border: solid 1px rgb(242, 107, 56)!important;">
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
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

        <script>
                    // Lấy giá trị của tham số 'id' từ URL
                    var urlParams = new URLSearchParams(window.location.search);
                    var id = urlParams.get("id");
                    var date;
                    var choice_time;
                    $(document).ready(function () {
                        $('.date_span').each(function () {
                            var date = $(this).text();
                            timeByDate(date, $(this).closest('.showtime_list').find('.showtime_cinema'));
                        });
                    });

                    function timeByDate(date, container) {
                        $.ajax({
                            type: "POST",
                            url: "/CINEMA/MovieDetailServlet",
                            data: {
                                timeByDate: date,
                                id: id
                            },
                            success: function (data) {
                                container.html(data); // Insert data into the corresponding container
                            }
                        });
                    }

                    // JavaScript để kích hoạt giờ được chọn và vô hiệu hóa các giờ khác
                    $(document).on('click', '.time_slot1', function () {
                        // Xóa lớp active từ tất cả các nút giờ
                        $('.time_slot1').removeClass('active');
                        // Kích hoạt nút giờ được chọn
                        $(this).addClass('active');
                        choice_time = $(this).text(); // hoặc có thể sử dụng .val() tùy thuộc vào loại thẻ (input, select, ...)          
                        // chọn ra thẻ có class là time_slit 1 được click , sao đó tìm thẻ cha gần nhất chứa nó
                        // có class là showtime_list -> tìm thẻ có tên date_span và lấy giá trị ra .
                        // var date = $(this).closest('.showtime_list').find('.date_span').text();    
                    });


        </script>
        <%@include file='./Components/Footer.jsp' %>
    </body>
</html>