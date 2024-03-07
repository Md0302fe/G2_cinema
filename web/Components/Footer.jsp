<%-- 
    Document   : Footer
    Created on : Feb 20, 2024, 11:03:13 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="main-container">
    <div class="footer__info">
        <div class="intro">
            <h3>GIỚI THIỆU</h3>
            <ul>
                <li>Về Chúng Tôi</li>
                <li>Thỏa Thuận Sử Dụng</li>
                <li>Quy Chế Hoạt Động</li>
                <li>Chính Sách Bảo Mật</li>
            </ul>
        </div>
        <div class="news">
            <h3>GÓC ĐIỆN ẢNH</h3>
            <ul>
                <li>Thể Loại Phim</li>
                <li>Bình Luận Phim</li>
                <li>Blog Điện Ảnh</li>
                <li>Phim Hay Tháng</li>
            </ul>
        </div>
        <div class="support">
            <h3>HỖ TRỢ</h3>
            <ul>
                <li>Góp ý</li>
                <li>Giá Vé</li>
                <li>Tuyển Dụng</li>
                <li>FAQ</li>
            </ul>
        </div>
        <div class="logo">
            <ul>
                <li>
                    <a href="#"><i class="fa-brands fa-youtube"></i></a>
                </li>
                <li>
                    <a href="#"><i class="fa-brands fa-square-facebook"></i></a>
                </li>
                <li>
                    <a href="#"><i class="fa-brands fa-square-instagram"></i></a>
                </li>
            </ul>
            <img src="Assets/Image/Footer_img/bocongthuong.jpg" alt="bocongthuong">
        </div>
    </div>
    <div class="footer__address"></div>
</div>

<script
    src="https://kit.fontawesome.com/26eb80e241.js"
    crossorigin="anonymous"
></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="./Assets/JS/homePage.js"></script>
<script src="./Assets/JS/payment.js"></script>

<script
    src="https://kit.fontawesome.com/26eb80e241.js"
    crossorigin="anonymous"
></script>

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
                        dots: true,
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
</body>
</html>
