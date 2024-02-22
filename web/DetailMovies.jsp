<%-- 
    Document   : DetailMovies
    Created on : Feb 22, 2024, 7:41:02 AM
    Author     : GIA TIEN
--%>

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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
              src="./Assets/Image/Movies_Image/DetailMovie02.webp"
              alt="Background Image"/>
            <button
              class="play-button"
              onclick="openModal()">
                <img class="img_play" src="./Assets/Image/Movies_Image/button-play.png" alt="Img Play" >
            </button>
          </div>
        </div>

        <div class="modal" id="videoModal" onclick="closeModal()">
            <iframe class="rounded-3" width="560" height="315" src="https://www.youtube.com/embed/SzINZZ6iqxY?si=gFYekINi8gyaZ5GQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        </div>

        <div class="all_content grid wide">
          <div class="movie_info">
            <div class="main_content_left">
              <div class="main_content1 font-semibold">
                <div class="">
                  <img
                    class="movie_thumbnail border border-2 rounded"
                    src="./Assets/Image/Movies_Image/DetailMovie01.webp"
                    alt=""/>
                </div>

                <div class="movie_detail">

                  <div class="movie_name flex">
                    <h2 class="movie_mvo">Mật Vụ Ong</h2>
                    <p class="movie_rated border border-1 rounded">T18</p>
                  </div>

                  <div class="movie_time flex">
                    <p class="movie_minute"><i class="ti-timer"></i>105 phút</p>
                    <p class="movie_calendar"><i class="ti-clipboard"></i>12/11/2024</p>
                  </div>

                  <div class="movie_voting flex">
                    <p class="movie_point"><i class="ti-star"></i>9.5</p>
                    <p class="movie_votes">(111 votes)</p>
                  </div>

                  <p class="country">Quốc gia: Mỹ</p>
                  <p class="movie_title">Thể loại: Hành Động</p>
                  <p class="movie_director">Đạo diễn: David Ayer</p>
                  <p class="movie_actors">
                    Diễn viên: Jason Statham, Emmy Raver-Lampman, Josh
                    Hutcherson
                  </p>
                  <p class="movie_language">Ngôn ngữ: Tiếng Anh - Phụ đề Tiếng Việt</p>
                </div>
              </div>

              <div class="main_content2">
                <div class="col_ndp flex">
                    <span class="orange_col"></span>
                    <p class="ndp bold ">Nội Dung Phim</p>
                </div>
                <p class="ndp_word">Jason Statham vào vai Adam Clay, một người nuôi ong cần mẫn và đơn độc. Anh có mối quan hệ tốt với bà chủ nhà, thậm chí coi bà như người thân duy nhất của mình. Thế nhưng, một sự kiện xảy ra khiến bà qua đời, và “người nuôi ong” Adam Clay quyết định bắt đầu kế hoạch trả thù tàn bạo của mình. Trong khi Clay vạch trần bí mật đằng sau đường dây lừa đảo cỡ lớn và bắt những kẻ có tội phải trả giá, thân phận thật của anh cũng dần được hé lộ.</p>
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
                <div class="all-movie-playing1">
                  <a href="" style="display: block">
                    <img
                      class="now-playing-beekeeper rounded"
                      src="./Assets/Image/Movies_Image/DetailMovie02.webp"
                      alt="the-beekeeper"
                      width="300"
                      height="200"
                      style="color: transparent" />
                  </a>
                  <p
                    href=""
                    class="now-playing-beekeeper-name font-semibold"
                    style="width: 400px; padding-top: 10px">
                    <i class="ti-ticket"></i>
                    Mật Vụ Ong
                  </p>
                </div>

                <div class="all-movie-playing2">
                  <a href="" style="display: block">
                    <img
                      class="now-playing-quycau rounded"
                      src="./Assets/Image/Movies_Image/DetailMovie03.webp"
                      alt="the-beekeeper"
                      width="300"
                      height="200"
                      style="color: transparent" />
                  </a>
                  <p
                    href=""
                    class="now-playing-quycau-name font-semibold"
                    style="width: 400px; padding-top: 10px">
                    <i class="ti-ticket"></i>
                    Quỷ Cẩu
                  </p>
                </div>

                <div class="all-movie-playing3">
                  <a href="" style="display: block">
                    <img
                      class="now-playing-rcn rounded"
                      src="./Assets/Image/Movies_Image/DetailMovie04.webp"
                      alt="the-beekeeper"
                      width="300"
                      height="200"
                      style="color: transparent" />
                  </a>
                  <p
                    href=""
                    class="now-playing-rcn-name font-semibold"
                    style="width: 400px; padding-top: 10px">
                    <i class="ti-ticket"></i>
                    Rượu Cốt Người
                  </p>
                </div>
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