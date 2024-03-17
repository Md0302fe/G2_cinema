<%-- 
    Document   : HomePage.jsp
    Created on : Feb 19, 2024, 7:23:43 AM
    Author     : MinhDuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Assets/Styles/base.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/grid.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/header.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/footer.css" rel="stylesheet" type="text/css"/>
        <link href="Assets/Styles/homePage.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito Sans">
        <title>G2_Cinema</title>
    </head>
    <body>
        <%@include file='./Components/Header.jsp' %>
        <div class="Home_Main">
            <!-- BANNER - SLIDER -->
            <div id="slider">
                <div class="image-slider">
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/kungfu.jpg" onclick="slick('13')" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/Quyco.jpg" onclick="slick('16') alt ="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/dune2_Slick.jpg" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/Happy.jpg" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/slider_image5.webp" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/slider_image6.webp" alt="">
                        </div>
                    </div>
                    <div class="image-item">
                        <div class="image">
                            <img src="./Assets/Image/Slick_Slider/slider_image10.webp" alt="">
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
                                <c:forEach items="${listMovie}" var="m">
                                    <div class="option option_movie" onClick="sendSelectedMovieId('${m.id}')">${m.name}
                                    </div>
                                </c:forEach>
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
                                <div class="option option_rap" value="">Galaxy Cần Thơ</div>                              
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
                            <div class="optionsContainer hidden" id="date_option">   
                                <div class="option option_date" onClick="sendSelectedDateId('${d}')">${d}</div> 
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
                            <div class="optionsContainer hidden" id="option_time">
                                <div class="option option_time" onClick="sendSelectedDateId('${d}')">${o}</div>
                            </div>
                        </div>
                    </div>
                    <div id="button_quickser" class="QuickSearch-item" style="text-align: center; color : white ; cursor: pointer">
                        <span class="Qsearch-title" onclick="sendQuickBooking()">Mua Vé Nhanh</span>
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
                            <c:forEach items = "${requestScope.listMovie}" var="m" varStatus="loop">
                                <c:if test="${loop.index < 8}">
                                    <div class="content-movie l-3 m-6">
                                        <div class="overlayout" onclick="redirectMovie('${m.id}')">
                                            <img height="400px" src="./Assets/Image/Movie_Image_Vip/${m.movie_img}" alt="ERROR">
                                            <div class="overlay">
                                                <div class="ticket-ticket">                                       
                                                    <a href="MovieDetailServlet?id=${m.id}" class="button buy_tickets"><i class="fa-solid fa-ticket fa-2xs"></i>Mua vé</a>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="MovieDetailServlet?id=${m.id}" id="movie_id">${m.name}</a>
                                    </div>
                                </c:if>
                            </c:forEach> 
                        </div>
                    </div>
                    <div class="main_content-movies-more hidden">
                        <div class="MOVIES row">                            
                            <c:forEach items = "${requestScope.listMovie}" var="m" varStatus="loop">                           
                                <c:if test="${loop.index > 8}">
                                    <div class="content-movie l-3 m-6">
                                        <div class="overlayout" onclick="redirectMovie('${m.id}')">
                                            <img height="400px" src="./Assets/Image/Movie_Image_Vip/${m.movie_img}" alt="ERROR">
                                            <div class="overlay">
                                                <div class="ticket-ticket">                                       
                                                    <a href="MovieDetailServlet?id=${m.id}" class="button buy_tickets"><i class="fa-solid fa-ticket fa-2xs"></i>Mua vé</a>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="MovieDetailServlet?id=${m.id}" id="movie_id">${m.name}</a>
                                    </div>
                                </c:if>
                            </c:forEach> 
                        </div>
                        <div class="info_movie">
                            <div class="handel_title">
                                <h1 class="navi-body_title-V">PHIM ĐANG CHIẾU</h1>
                            </div>
                            <div class="info_movie_des">
                                <span>
                                    Kết thúc mùa Tết ăn chơi thỏa thích và khó khăn khi bắt đầu chuỗi ngày công việc buồn chán, vậy thì hãy ra rạp chiếu phim để nạp lại năng lượng với những tác phẩm xịn xò sẽ đổ bộ trong tháng 3 này. Galaxy Cinema mang tới cho các Stars những phút giây giải tỏa áp lực với sự trở lại của bộ phim sử thi hoành tráng Dune, Thần Long Đại Hiệp Po và các Titan khổng lồ trong Godzilla. Chưa hết, trai đẹp Lee Do Huyn còn trở lại trong một tác phẩm li kì hoàn toàn mới. Cùng check nào.
                                </span>
                                <div class="des-movie">
                                    <div class="title-des_movie">
                                        1. Dune: Part Two / Dune: Hành Tinh Cát - Phần 2 – Hành động – 01.03.2024
                                    </div>
                                    <div class="des-movie-des">
                                        Sau thành công của Dune: Hành Tinh Cát với nhiều lời khen có cánh và 6 tượng vàng Oscar, Dune: Hành Tinh Cát Phần Hai là tác phẩm được mong chờ nhất hiện tại. Bộ phim hay nhận được cơn mưa lời khen từ giới mộ điệu sau buổi công chiếu tại Mỹ. Dune: Hành Tinh Cát Phần Hai còn hay hơn phần 1 và hứa hẹn sẽ là tác phẩm sử thi hay nhất năm 2024. Bộ phim sẽ đặc biệt hay hơn khi trải nghiệm dưới định dạng phim IMAX với những khung cảnh tuyệt vời mà Dune mang lại. Dune: Hành Tinh Cát Phần Hai tiếp tục với câu chuyện về Paul Atreides (Timothée Chalamet) khi anh gia nhập lực lượng với người Fremen để giải cứu thiên hà khỏi đế chế Harkonnen, kẻ đã hủy hoại gia tộc Atreides và gây ra cái chết của công tước Leto Atreides (Oscar Issac). Đối mặt với những lựa chọn giữa tình yêu của cuộc đời mình và số phận của vũ trụ, Paul phải ngăn chặn viễn cảnh tương lai tồi tệ nhất có thể xảy ra. Phim có sự góp mặt của dàn diễn viên chất lượng như Timothée Chalamet, Zandaya, Rebecca Ferguson, ‘Thanos’ Josh Brolin, Austin Butler và Florence Pugh.
                                    </div>
                                </div>

                                <div class="des-movie">
                                    <div class="title-des_movie">
                                        2. Kung Fu Panda 4 – Hoạt hình – 08.03.2024
                                    </div>
                                    <div class="des-movie-des">
                                        Sau 8 năm kể từ thành công của phần thứ 3, DreamWorks mang đến cho khán giả toàn thế giới phần phim thứ tư về Thần Long Đại Hiệp Po mang tên Kung Fu Panda 4. Phần phim đầu tiên của Kung Fu Panda thu về gần 632 triệu USD, hai phần tiếp theo lần lượt là Kung Fu Panda 2 (2011) và Kung Fu Panda 3 (2016) mang về cho DreamWorks cùng Universal con số doanh thu khủng 1,8 tỉ USD. Tác phẩm mới nhất hứa hẹn sẽ là cơn sốt phòng vé dịp đầu năm nay. Chuyện phim xảy ra sau khi Po được chọn trở thành Thủ lĩnh tinh thần của Thung lũng Bình Yên, Po cần tìm và huấn luyện một Chiến binh Rồng mới. Trong khi đó một mụ phù thủy độc ác lên kế hoạch triệu hồi lại tất cả những kẻ phản diện mà Po đã đánh bại để thâu tóm sức mạnh, phục vụ cho mục đích xấu xa.
                                    </div>
                                </div>

                                <div class="des-movie">
                                    <div class="title-des_movie">
                                        3. Exhuma / Exhuma: Quật Mộ Trùng Ma – Li kì – 15.02024
                                    </div>
                                    <div class="des-movie-des">
                                        Exhuma: Quật Mộ Trùng Ma là bom tấn màn ảnh Hàn Quốc, liên tục trở thành tâm điểm chú ý của khán giả Châu Á với doanh thu khủng. Bộ phim mới liên tục đứng đầu phòng vé xứ Kim Chi cùng nhiều quốc gia lân cận. Siêu phẩm kinh dị năm 2024 của Hàn Quốc quy tụ dàn ngôi sao hạng A: Hoi Min Sik, Yoo Hai Jin, Kim Go Eun, Lee Do Hyun. Sau khi gánh chịu nhiều sự kiện huyền bí, một gia đình giàu có ở Los Angeles (Mỹ) nhờ tới sự giúp đỡ của bộ đôi pháp sư trẻ Hwa Rim và Bong Gil để giải cứu đứa con mới chào đời. Khi đến nơi, Hwa Rim cảm nhận được âm hồn của tổ tiên đang ám lấy họ, được gọi là “Tiếng Gọi Mộ Phần”. Để khai quật ngôi mộ và giúp người tổ tiên siêu thoát, Hwa Rim tìm kiếm sự giúp đỡ từ thầy phong thủy Sang Duk và người làm nghề mai táng nổi tiếng nhất nước. Bộ tứ tìm thấy ngôi mộ tại một ngôi làng hẻo lánh ở Hàn Quốc. Họ tiến hành quật mộ mà không biết đến hậu quả kinh hoàng khi vô tình giải phóng thế lực đen tối bên dưới.
                                    </div>
                                </div>

                                <div class="des-movie">
                                    <div class="title-des_movie">
                                        4. Godzilla x Kong: The New Empire / Godzilla x Kong: Đế Chế Mới – Hành động – 29.03.2024
                                    </div>
                                    <div class="des-movie-des">
                                        Godzilla x Kong: The New Empire là phần thứ năm trong loạt tác phẩm về các loài quái vật khổng lồ, sau Godzilla (2014), Kong: Skull Island (2017), Godzilla: King of the Monters (2019) và Godzillia vs. Kong (2021). Tác phẩm do Adam Wingard chỉ đạo, có sự tham gia của các diễn viên Rebecca Hall, Brian Tyree Henry và Kaylee Hottle. Được đánh giá có phần kĩ xảo vượt trội hơn qua từng phần, Godzilla x Kong: The New Empire sẽ là tác phẩm không thể bỏ lỡ khi thưởng thức với rạp chiếu phim IMAX. Godzilla x Kong: The New Empire sẽ tiếp nối sau những cuộc đối đầu bùng nổ của Godzillia vs. Kong (2021), một cuộc phiêu lưu hoàn toàn mới, đưa Kong và Godzilla cùng nhau chống lại một mối đe dọa khổng lồ chưa được khám phá, ẩn sâu trong Trái Đất. Bộ phim chiếu rạp sẽ đào sâu hơn vào phần lịch sử của những Titan, nguồn gốc cũng như những bí ẩn tại Đảo Đầu Lâu, đồng thời khám phá trận chiến thần thoại đã tạo nên những sinh vật phi thường và sự gắn kết của chúng với loài người.  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="more_movies">
                        <span class="more_movies_span" onclick="hidden_blog()">Xem Thêm
                            <i class="fa-solid fa-arrow-right"></i>
                        </span>
                    </div>
                    <div class="Blog_content" id="blog">
                        <div class="handel_title">
                            <h1 class="navi-body_title-V">GÓC ĐIỆN ẢNH</h1>
                        </div>
                        <div class="Blog_content-items row col">
                            <div class="Blog_left col c-12 m-6 ">
                                <div class="blog_main_img">
                                    <img src="./Assets/Image/Blog_Image/duck.webp" alt="ERROR">
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
                            <div class="Blog_right col c-12 m-6">
                                <div class="blog_orther">
                                    <div class="blog_item">
                                        <div class="container_blog-other">
                                            <img src="./Assets/Image/Blog_Image/blog_orther1.webp" alt="">
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
                                            <img src="./Assets/Image/Blog_Image/blog_orther2.webp" alt="">
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
                                            <img src="./Assets/Image/Blog_Image/blog_orther3.webp" alt="">
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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
                            var selectedMovieId;
                            var selectedTimeS;
                            function sendSelectedMovieId(movie_id) {
                                selectedMovieId = movie_id; // Lưu giá trị của movie_id vào biến toàn cục
                                $.ajax({
                                    type: "GET",
                                    url: "/CINEMA/loaddate",
                                    data: {
                                        movieId: movie_id,
                                    },
                                    success: function (data) {
                                        var row = document.getElementById("date_option");
                                        row.innerHTML = data;
                                    }
                                });
                            }

                            function sendSelectedDateId(date_id) {
                                // Sử dụng giá trị của biến toàn cục selectedMovieId                                       
                                $.ajax({
                                    type: "GET",
                                    url: "/CINEMA/loadtime",
                                    data: {
                                        dateId: date_id,
                                        movieId: selectedMovieId
                                    },
                                    success: function (data) {
                                        var row = document.getElementById("option_time");
                                        row.innerHTML = data;
                                    }
                                });
                            }

                            function redirectMovie(movieId) {
                                var url = "/CINEMA/MovieDetailServlet?id=" + movieId;
                                // Chuyển hướng đến trang /seat với các thông tin đã chọn
                                window.location.href = url;
                            }

                            function slick(movieid) {
                                var url = "/CINEMA/MovieDetailServlet?id=" + movieid;
                                // Chuyển hướng đến trang /seat với các thông tin đã chọn
                                window.location.href = url;
                            }

                            function hidden_blog() {
                                document.querySelector(".Blog_content").classList.add("hiddent_blog");
                            }

                            function sendSelectedTimeId(time) {
                                selectedTimeS = time;
                                console.log("selectedTimeS : " + selectedTimeS);
                            }

                            function sendQuickBooking() {
                                // Lấy thông tin từ các thẻ HTML
                                var selectedDate = document.querySelector('.option_date').innerText;
                                // Xây dựng URL với thông tin đã lấy được
                                var url = "/CINEMA/seat?id=" + encodeURIComponent(selectedMovieId) +
                                        "&date=" + encodeURIComponent(selectedDate) +
                                        "&time=" + selectedTimeS;
                                // Chuyển hướng đến trang /seat với các thông tin đã chọn
                                window.location.href = url;
                            }

        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".image-slider").slick({
                    autoplay: true,
                    autoplaySpeed: 2000,
                    centerPadding: '200px',
                    arraws: true,
                    dots: true,
                    slidesToShow: 1,
                    centerMode: true,
                    responsive: [
                        {
                            breakpoint: 1024,
                            settings: {
                                centerMode: false,
                                slidesToShow: 1,
                                infinite: true,
                                dots: true
                            }
                        },
                        {
                            breakpoint: 600,
                            settings: {
                                slidesToShow: 1
                            }
                        }]
                });
            });
        </script>

        <!-- Thêm mã JavaScript vào cuối thẻ <body> hoặc tệp .js của bạn -->
        <%@include file='./Components/Footer.jsp' %>

