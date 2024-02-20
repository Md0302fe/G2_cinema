<%-- 
    Document   : HomePage.jsp
    Created on : Feb 19, 2024, 7:23:43 AM
    Author     : MinhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Assets/Styles/base.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/grid.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/homePage.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <title>G2_Cinema</title>
    </head>
    <body>
        <div class="Home_Main">
            <!-- BANNER - SLIDER -->
            <div id="slider">
                <div class="image-slider">
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/slider_image12.webp" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/slider_image13.webp" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/slider_image10.webp" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/slider_image9.webp" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/slider_image11.webp" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/slider_image8.webp" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/slider_image6.webp" alt="">
                        </div>
                    </div>
                </div>
                <!-- QUICK SEARCH -->
                <div class="Quick-Search">
                    <div class="QuickSearch-item">
                        <div class="Qsearch-icon">
                            <span>1</span>
                        </div>
                        <span class="Qsearch-title">Chọn Phim</span>
                        <div class="Qsearch_icon_dow">
                            <i class=" fa-solid fa-chevron-down"></i>
                        </div>
                        <div class="Qsearch_Data_List">
                            <div class="optionsContainer hidden">
                                <div class="option" value="">Quỷ Cẩu</div>
                                <div class="option" value="">Mật Vụ Ông</div>
                                <div class="option" value="">Làng Thợ Mộc</div>
                            </div>
                        </div>
                        <div id="selectedOption" data-option=""></div>
                    </div>

                    <div class="QuickSearch-item ">
                        <div class="Qsearch-icon">
                            <span>2</span>
                        </div>
                        <span class="Qsearch-title">Chọn Rạp</span>
                        <div class="Qsearch_icon_dow ">
                            <i class="fa-solid fa-chevron-down"></i>
                        </div>
                        <div class="Qsearch_Data_List">
                            <div class="optionsContainer hidden">
                                <div class="option" value="">Rạp 1</div>
                            </div>
                        </div>
                    </div>
                    <div class="QuickSearch-item">
                        <div class="Qsearch-icon">
                            <span>3</span>
                        </div>
                        <span class="Qsearch-title">Chọn Ngày</span>
                        <div class="Qsearch_icon_dow ">
                            <i class="fa-solid fa-chevron-down"></i>
                        </div>
                        <div class="Qsearch_Data_List">
                            <div class="optionsContainer hidden">
                                <div class="option" value="">21-1-2024</div>
                                <div class="option" value="">22-1-2024</div>
                                <div class="option" value="">23-1-2024</div>
                            </div>
                        </div>
                    </div>
                    <div class="QuickSearch-item">
                        <div class="Qsearch-icon">
                            <span>4</span>
                        </div>
                        <span class="Qsearch-title">Chọn Suất</span>
                        <div class="Qsearch_icon_dow ">
                            <i class="fa-solid fa-chevron-down"></i>
                        </div>
                        <div class="Qsearch_Data_List">
                            <div class="optionsContainer hidden">
                                <div class="option" value="">9:00</div>
                                <div class="option" value="">13:30</div>
                                <div class="option" value="">16:30</div>
                            </div>
                        </div>
                    </div>
                    <div class="QuickSearch-item" style="text-align: center;">
                        <span class="Qsearch-title">Mua Vé Nhanh</span>
                    </div>
                </div>
            </div>

            <!-- BODY - MAIN -->
            <div class="Main_Body grid">
                <div class="Main_Content grid wide">
                    <div class="navigation-body">
                        <h1 class="navi-body_title">PHIM </h1>
                        <div class="navigation-body_items">
                            <div class="navigation-body_item" id="1">
                                <h2>Đang chiếu</h2>
                            </div>
                            <div class="navigation-body_item" id="2">
                                <h2>Sắp chiếu</h2>
                            </div>
                            <div class="navigation-body_item" id="3">
                                <h2>Phim IMAX</h2>
                            </div>
                            <div class="navigation-body_item">
                                <div class="Navigation_Location">
                                    <i class="fa-solid fa-location-dot nav-icon_location" style="color: #034EA2;"></i>
                                    <h2 style="color: #034EA2;">Cần Thơ</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="main_content-movies">
                        <div class="MOVIES row">
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_05.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Gia Đình X Điệp Viên Mã: Trắng</a>
                            </div>

                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_02.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>

                                <a href="" id="movie_id">Gấu Đỏ Biến Hình</a>
                            </div>

                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_03.webp"
                                         alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Mai</a>
                            </div>
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_04.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>

                                </div>
                                <a href="" id="movie_id">Gặp Lại Chị Bầu</a>
                            </div>
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_01.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Madame Web</a>
                            </div>
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_06.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Dune: Hành Tinh Cát</a>
                            </div>
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_08.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Nàng Thơ Của Miller</a>
                            </div>
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_09.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Pororo Hành Trình Siêu Sao Âm Nhạc</a>
                            </div>
                        </div>
                    </div>
                    <div class="main_content-movies-more hidden">
                        <div class="MOVIES row">
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_05.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Gia Đình X Điệp Viên Mã: Trắng</a>
                            </div>

                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_02.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>

                                <a href="" id="movie_id">Gấu Đỏ Biến Hình</a>
                            </div>

                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_03.webp"
                                         alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Mai</a>
                            </div>
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_04.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>

                                </div>
                                <a href="" id="movie_id">Gặp Lại Chị Bầu</a>
                            </div>
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_01.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Madame Web</a>
                            </div>
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_06.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Dune: Hành Tinh Cát</a>
                            </div>
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_08.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Nàng Thơ Của Miller</a>
                            </div>
                            <div class="content-movie l-3">
                                <div class="overlayout">
                                    <img src="./Assets/Image/Movies_Image/movie_09.webp" alt="ERROR">
                                    <div class="overlay">
                                        <div class="ticket-ticket">
                                            <i class="fa-solid fa-ticket fa-2xs"></i>
                                            <a href="#" class="button">Mua vé</a>
                                        </div>
                                    </div>
                                </div>
                                <a href="" id="movie_id">Pororo Hành Trình Siêu Sao Âm Nhạc</a>
                            </div>
                        </div>
                        <div class="info_movie">
                            <div class="handel_title">
                                <h1 class="navi-body_title-V">PHIM ĐANG CHIẾU</h1>
                            </div>
                            <div class="info_movie_des">
                                <span>
                                    Mùa đẹp nhất trong năm mang theo cái không khí se se lạnh đã dần đến. Những món quà trao
                                    nhau là điều không thể thiếu dịp cuối năm và Galaxy cũng không ngoại lệ. Dưới cây thông
                                    là hàng loạt những ấn phẩm xịn xò để các Stars có thể đón nhận và mang đến cho những
                                    người yêu thương. Sự ấm áp sẽ được mang đến rạp chiếu phim với ngôi sao ước trong Wish,
                                    tràn ngập si-cu-la với Wonka và thế giới lung linh sắc màu Atlantis của Aquaman And The
                                    Lost Kingdom. Chưa kể đến, với những người mặn mòi thích cảm giác kinh dị trong mùa đông
                                    thì vẫn có phim chiếu rạp tiền truyện của bộ phim Tết Ở Làng Địa Ngục với một đám cưới
                                    chuột vô cùng bí ẩn. Check nào.
                                </span>
                                <div class="des-movie">
                                    <div class="title-des_movie">
                                        1. Wish / Điều Ước – Hoạt hình – 24.11.2024
                                    </div>
                                    <div class="des-movie-des">
                                        Wish (Điều ước) là bộ phim hoạt hình thứ 62 của Walt Disney Animation Studios. Bộ
                                        phim hay được ấn định để kỷ niệm 100 năm thành lập 'nhà Chuột' và kỳ vọng hội tụ tất
                                        cả những tinh hoa của xưởng phim đã trở thành một biểu tượng văn hóa.
                                        <br>
                                        Điều Ước lấy bối cảnh tại một vương quốc diệu kỳ tên Rosas. Ở đây, Asha - một cô gái
                                        thông minh
                                        và mơ mộng đã ước một điều ước quá sức mạnh mẽ, đến nỗi một thế lực ngoài vũ trụ với
                                        sức mạnh vô hạn tên Star đã đáp lại cô. Asha và Star cùng nhau đối mặt với người cầm
                                        quyền của Rosas - quốc vương Magnifico, để cứu lấy mọi người và chứng minh rằng ý
                                        chí gan dạ của con người kết hợp với phép màu của những vì sao sẽ giúp những điều kỳ
                                        diệu xảy ra.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="more_movies">
                        <span>Xem Thêm
                            <i class="fa-solid fa-arrow-right"></i>
                        </span>
                    </div>
                    <div class="Blog_content">
                        <div class="handel_title">
                            <h1 class="navi-body_title-V">GÓC ĐIỆN ẢNH</h1>
                        </div>
                        <div class="Blog_content-items row col">
                            <div class="Blog_left col c-6">
                                <div class="blog_main_img">
                                    <img src="./Assets/Image/duck.webp" alt="ERROR">
                                </div>
                                <div class="blog_main_des">
                                    [Review] Migration: Nhà Vịt Có Đủ Sức Thành Hiện Tượng Như Minions?
                                </div>
                                <div class="icon-box">
                                    <div class="like-icon">
                                        <i class="fas fa-thumbs-up"></i>
                                    </div>
                                    <div class="view-icon">
                                        <i class="fas fa-eye"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="Blog_left col c-6">
                                <div class="blog_orther">
                                    <div class="blog_item">
                                        <div class="container_blog-other">
                                            <img src="./Assets/Image/blog_orther1.webp" alt="">
                                        </div>
                                        <div>
                                            <div class="blog_1_des">
                                                [Preview] Aquaman And The Lost Kingdom: Niềm Hy Vọng Cuối Cùng Của...
                                            </div>
                                            <div class="icon-box">
                                                <div class="like-icon">
                                                    <i class="fas fa-thumbs-up"></i>
                                                </div>
                                                <div class="view-icon">
                                                    <i class="fas fa-eye"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="blog_item">
                                        <div class="container_blog-other">
                                            <img src="./Assets/Image/blog_orther2.webp" alt="">
                                        </div>
                                        <div>
                                            <div class="blog_1_des">
                                                [Preview] Aquaman And The Lost Kingdom: Niềm Hy Vọng Cuối Cùng Của...
                                            </div>
                                            <div class="icon-box">
                                                <div class="like-icon">
                                                    <i class="fas fa-thumbs-up"></i>
                                                </div>
                                                <div class="view-icon">
                                                    <i class="fas fa-eye"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="blog_item">
                                        <div class="container_blog-other">
                                            <img src="./Assets/Image/blog_orther3.webp" alt="">
                                        </div>
                                        <div>
                                            <div class="blog_1_des">
                                                [Preview] Aquaman And The Lost Kingdom: Niềm Hy Vọng Cuối Cùng Của...
                                            </div>
                                            <div class="icon-box">
                                                <div class="like-icon">
                                                    <i class="fas fa-thumbs-up"></i>
                                                </div>
                                                <div class="view-icon">
                                                    <i class="fas fa-eye"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        <script src="./Assets/JS/homePage.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $(".image-slider").slick({
                    autoplay: true,
                    autoplaySpeed: 2000,
                    centerPadding: '200px',
                    arraws: true,
                    dots: true,
                    centerMode: true,
                    slidesToShow: 1,
                });
            });
        </script>
    </body>
</html>
